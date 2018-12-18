import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:jamsalon/core/config/theme.config.dart';

void configureSystemUi() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: appTheme.backgroundColor,
      systemNavigationBarColor: Colors.white,
    ),
  );
}
