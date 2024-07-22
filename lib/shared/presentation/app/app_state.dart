part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial() = _Initial;

  const factory AppState.changeLanguage(Locale locale) = ChangeLanguage;
  const factory AppState.changeThemeState() = ChangeThemeState;
  const factory AppState.lightThemeState() = LightThemeState;
  const factory AppState.darkThemeState() = DarkThemeState;
}
