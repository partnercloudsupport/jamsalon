import 'package:flutter/material.dart';

final ThemeData _defaultThemeData = ThemeData.light();
final TextTheme _defaultTextTheme = ThemeData.light().textTheme;

final ThemeData appTheme = _defaultThemeData.copyWith(
  backgroundColor: Color.fromRGBO(233, 236, 239, 1.0),
  scaffoldBackgroundColor: Color.fromRGBO(233, 236, 239, 1.0),
  primaryColorBrightness: Brightness.light,
  primaryColor: Color.fromRGBO(233, 236, 239, 1.0),
  primaryColorLight: Color.fromRGBO(255, 255, 255, 1.0),
  primaryColorDark: Color.fromRGBO(68, 68, 68, 0.1),
  accentColor: Colors.blueAccent,
  accentColorBrightness: Brightness.light,
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.blueAccent,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
    textTheme: ButtonTextTheme.normal,
  ),
  dividerColor: Colors.black38,
  textTheme: _defaultTextTheme.copyWith(
    display1: _defaultTextTheme.display1.copyWith(
      color: Colors.black87,
      fontWeight: FontWeight.w500,
    ),
  ),
);
