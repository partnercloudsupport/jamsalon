import 'package:flutter/material.dart';

final ThemeData _defaultThemeData = ThemeData.light();
final TextTheme _defaultTextTheme = ThemeData.light().textTheme;

final ThemeData appTheme = _defaultThemeData.copyWith(
  backgroundColor: Color.fromRGBO(233, 236, 239, 1.0),
  scaffoldBackgroundColor: Color.fromRGBO(233, 236, 239, 1.0),
  primaryColor: Color.fromRGBO(233, 236, 239, 1.0),
  primaryColorLight: Color.fromRGBO(255, 255, 255, 1.0),
  primaryColorDark: Color.fromRGBO(68, 68, 68, 0.1),
  primaryColorBrightness: Brightness.light,
  accentColor: Colors.blueAccent,
  accentColorBrightness: Brightness.dark,
  buttonTheme: ButtonThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
  ),
  // dividerColor: Colors.black38,
  textTheme: _defaultTextTheme.copyWith(
    button: _defaultTextTheme.button.copyWith(color: Colors.white),
    display1: _defaultTextTheme.display1.copyWith(
      color: Colors.black87,
      fontWeight: FontWeight.w500,
    ),
  ),
);
