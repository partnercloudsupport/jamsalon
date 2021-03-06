import 'dart:async';

import 'package:flutter/material.dart';

import 'package:jamsalon/src/core/app.dart';
import '../splash_screen/_.index.dart';
import 'my_material_app.view.dart';

class MyApp extends StatelessWidget {
  final Future<bool> _isAppInitialized;

  MyApp({Key key})
      : this._isAppInitialized = App.initialize(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    print('[App] -BUILDING- MyApp');
    return FutureBuilder(
      future: this._isAppInitialized,
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            print('[App] App Initialized');
            return MyMaterialApp();
          default:
            return SplashScreen();
        }
      },
    );
  }
}
