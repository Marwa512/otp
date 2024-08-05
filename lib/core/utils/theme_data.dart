import 'package:flutter/material.dart';

enum AppTheme {
  lightTheme("Light"),
  darkTheme("Dark");

  const AppTheme(this.name);
  final String name;
}

final appThemeData = {
  AppTheme.lightTheme: ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,
  ),
  AppTheme.darkTheme: ThemeData.dark(),
};

ThemeData darkTheme = ThemeData.dark();
ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(backgroundColor: Colors.white));
