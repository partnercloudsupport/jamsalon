import 'package:flutter/material.dart';

ThemeData buildThemeData() {
  final ThemeData currentThemeData = ThemeData.light();
  final TextTheme currentTextTheme = ThemeData.light().textTheme;

  return currentThemeData.copyWith(
    backgroundColor: Color.fromRGBO(233, 236, 239, 1.0),
    scaffoldBackgroundColor: Color.fromRGBO(233, 236, 239, 1.0),
    primaryColor: Color.fromRGBO(233, 236, 239, 1.0),
    primaryColorLight: Color.fromRGBO(255, 255, 255, 1.0),
    primaryColorDark: Color.fromRGBO(68, 68, 68, 0.1),
    accentColor: Color.fromRGBO(216, 27, 96, 1.0),
    buttonColor: Color.fromRGBO(33, 33, 33, 1.0),
    textTheme: currentTextTheme.copyWith(
      display1: currentTextTheme.display1.copyWith(
        color: Colors.black87,
        fontWeight: FontWeight.w500,
      ),
      body1: currentTextTheme.body1.copyWith(
        fontSize: 12.0,
      ),
      body2: currentTextTheme.body2.copyWith(
        fontSize: 12.0,
      ),
    ),
  );
}
