part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial() = _Initial;

  const factory AppState.changeLanguage(Locale locale) = _ChangeLanguage;
  const factory AppState.changeThemeState() = _ChangeThemeState;
  const factory AppState.lightThemeState() = _LightThemeState;
  const factory AppState.darkThemeState() = _DarkThemeState;
}
