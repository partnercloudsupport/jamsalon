import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class SystemConfig {
  static SystemUiOverlayStyle _currentStyle = SystemUiOverlayStyle.dark;

  static void configureUi() {
    SystemChrome.setSystemUIOverlayStyle(
      _currentStyle = _currentStyle.copyWith(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
  }

  static void setSystemNavigationBarColor(
    Color color, {
    Brightness iconBrightness = Brightness.dark,
  }) {
    SystemChrome.setSystemUIOverlayStyle(
      _currentStyle = _currentStyle.copyWith(
        systemNavigationBarColor: color,
        systemNavigationBarIconBrightness: iconBrightness,
      ),
    );
  }
}
