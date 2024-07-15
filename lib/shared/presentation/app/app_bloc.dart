import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:opt_page/shared/data/data_resources/local_data.dart';

part 'app_state.dart';
part 'app_event.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  bool isDark = false;
  // final SharedPreferencesProvider _sharedPreferencesProvider =
  //     GetIt.I<SharedPreferencesProvider>();
  AppBloc() : super(const AppState.initial()) {
    on<AppEvent>(
      (event, emit) async {
        event.when(
          changeLocale: (Locale locale) {
            emit(AppState.changeLanguage(locale));
            // _sharedPreferencesProvider.setLanguage(locale.toString());
          },
          changeThemeData: () {
            if (isDark) {
              emit(const _LightThemeState());
              isDark = !isDark;
              print(isDark);
            } else {
              emit(const AppState.darkThemeState());
              isDark = !isDark;
              print(isDark);
            }
          },
        );
      },
    );
  }
}
