import 'package:flutter/material.dart';

final Color _appBackgroundColor = Color.fromRGBO(233, 236, 239, 1.0);
// final Color _appBackgroundColor = Colors.green;
final ThemeData _defaultThemeData = ThemeData.light();
final TextTheme _defaultTextTheme = ThemeData.light().textTheme;

final ThemeData appTheme = _defaultThemeData.copyWith(
  ///
  /// Brightnesses
  ///
  accentColorBrightness: Brightness.dark,
  primaryColorBrightness: Brightness.dark,

  ///
  /// Colors
  ///
  accentColor: Colors.blueAccent,
  backgroundColor: _appBackgroundColor,
  canvasColor: Colors.transparent,
  primaryColor: _appBackgroundColor,
  primaryColorLight: Color.fromRGBO(255, 255, 255, 1.0),
  primaryColorDark: Color.fromRGBO(68, 68, 68, 0.1),
  scaffoldBackgroundColor: _appBackgroundColor,

  ///
  /// Button Theme
  ///
  buttonTheme: ButtonThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
    textTheme: ButtonTextTheme.primary,
  ),

  ///
  /// Text Theme
  ///
  textTheme: _defaultTextTheme.copyWith(
    button: _defaultTextTheme.button.copyWith(color: Colors.white),
    display1: _defaultTextTheme.display1.copyWith(
      color: Colors.black87,
      fontWeight: FontWeight.w500,
    ),
  ),
);
