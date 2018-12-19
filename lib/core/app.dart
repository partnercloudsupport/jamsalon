import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:jamsalon/core/config/index.dart';
import 'package:jamsalon/shared/store/index.dart';

class App {
  static const String title = 'Jamsalon';

  static final ThemeData theme = appTheme;

  static final Map<String, WidgetBuilder> routes = appRoutes;

  static Store<AppState> get store => AppStore.initialize();

  static void initialize() {
    configureSystemUi();
  }
}
