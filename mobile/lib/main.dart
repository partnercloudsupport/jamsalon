import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:jamsalon_bloc/jamsalon_bloc.dart';

import 'src/core/index.dart';
import 'src/feature/home/index.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<bool> _isAppInitialized;

  @override
  void initState() {
    this._isAppInitialized = App.initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('-BUILDING- MyApp');
    return FutureBuilder(
      future: this._isAppInitialized,
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            print('[App] App Initialized');
            return StoreProvider<AppState>(
              store: App.store,
              child: MaterialApp(
                color: Colors.blue,
                title: App.title,
                theme: App.theme,
                routes: App.routes,
                home: HomePage(),
                navigatorKey: navigatorKey,
                debugShowCheckedModeBanner: false,
              ),
            );
          case ConnectionState.waiting:
            return Container(
              // color: Color.fromRGBO(233, 236, 239, 1.0),
              height: double.infinity,
              width: double.infinity,
              child: Center(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: CircularProgressIndicator(),
                ),
              ),
            );
          default:
            return Container(
              // color: Color.fromRGBO(233, 236, 239, 1.0),
              height: double.infinity,
              width: double.infinity,
              child: Center(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: CircularProgressIndicator(),
                ),
              ),
            );
        }
      },
    );
  }
}
