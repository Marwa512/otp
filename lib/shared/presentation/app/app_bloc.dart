import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
            emit(ChangeLanguage(locale));
            // _sharedPreferencesProvider.setLanguage(locale.toString());
          },
          changeThemeData: () {
            if (isDark) {
              emit(const LightThemeState());
              isDark = !isDark;
              print(isDark);
            } else {
              emit(const DarkThemeState());
              isDark = !isDark;
              print(isDark);
            }
          },
        );
      },
    );
  }
}
