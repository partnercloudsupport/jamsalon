import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:jamsalon_bloc/jamsalon_bloc.dart';

import '../../feature/index.dart';
import '../app.dart';
import '../config/index.dart';
import '../store_connectors.dart';

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
