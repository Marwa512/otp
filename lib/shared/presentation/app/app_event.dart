part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
//  factory AppEvent.changeTheme()= _ChangeTheme;
  const factory AppEvent.changeLocale(Locale locale) = _ChangeLocale;
  const factory AppEvent.changeThemeData() = _ChangeThemeData;
}
