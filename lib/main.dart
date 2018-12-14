import 'package:jamsalon/core/theme.config.dart';
import 'package:jamsalon/feature/history/history.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jamsalon/feature/search/search.page.dart';
import 'package:jamsalon/shared/store/app.state.dart';
import 'package:jamsalon/shared/store/app.store.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:jamsalon/feature/home/home.page.dart';
import 'package:jamsalon/feature/salon/salon.page.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Store<AppState> store = buildStore();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Color(0x00FFFFFF),
      ),
    );
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Jamsalon',
        debugShowCheckedModeBanner: false,
        theme: buildThemeData(),
        routes: {
          '/salon': (BuildContext context) => SalonPage(),
          '/history': (BuildContext context) => HistoryPage(),
          '/search': (BuildContext context) => SearchPage(),
        },
        home: HomePage(),
      ),
    );
  }
}
