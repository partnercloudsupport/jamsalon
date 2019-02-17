import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:bloc/bloc.dart';

import 'package:jamsalon/src/core/app.dart';
import 'package:jamsalon/src/core/config/routes.config.dart';
import 'package:jamsalon/src/core/connector/store_connectors.dart';
import 'package:jamsalon/src/feature/_.index.dart';

class MyMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('[App] -BUILDING- MyMaterialApp');
    return StoreProvider<AppState>(
      store: App.store,
      child: MaterialApp(
        color: Colors.blue,
        title: App.title,
        theme: App.theme,
        routes: App.routes,
        home: StoreConnectors.auth(builder: (vm) {
          return vm.isAuthenticated ? HomePage() : SignInPage();
        }),
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
