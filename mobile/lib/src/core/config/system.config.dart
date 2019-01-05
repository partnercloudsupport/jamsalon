import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'theme.config.dart';

class SystemConfig {
  static void configureUi() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: appTheme.backgroundColor,
        systemNavigationBarColor: Colors.white,
      ),
    );
  }
}
