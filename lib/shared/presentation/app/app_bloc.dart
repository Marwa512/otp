import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../data/data_resources/local_data.dart';

part 'app_state.dart';
part 'app_event.dart';
part 'app_bloc.freezed.dart';

@injectable
class AppBloc extends Bloc<AppEvent, AppState> {
  bool isDark = false;
  final SharedPreferencesProvider sharedPref;
  AppBloc(this.sharedPref) : super(const AppState.initial()) {
    on<AppEvent>(
      (event, emit) async {
        event.when(
          changeLocale: (Locale locale) {
            sharedPref.setLanguage(locale.languageCode);
            emit(ChangeLanguage(locale));
          },
          changeThemeData: () {
            if (isDark) {
              emit(const LightThemeState());
              isDark = !isDark;
            } else {
              emit(const DarkThemeState());
              isDark = !isDark;
            }
            sharedPref.setTheme(isDark);
          },
        );
      },
    );
  }
}
