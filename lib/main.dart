import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:jamsalon/core/app.dart';
import 'package:jamsalon/core/config/routes.config.dart';
import 'package:jamsalon/shared/store/index.dart';
import 'package:jamsalon/feature/home/index.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    App.initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('-BUILDING- MyApp');
    return StoreProvider<AppState>(
      store: App.store,
      child: MaterialApp(
        title: App.title,
        theme: App.theme,
        routes: App.routes,
        navigatorKey: navigatorKey,
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
