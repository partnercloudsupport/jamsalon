import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

void configureSystem() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Color.fromRGBO(233, 236, 239, 1.0),
      systemNavigationBarColor: Colors.white,
    ),
  );
}
