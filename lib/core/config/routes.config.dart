import 'package:flutter/material.dart';
import 'package:jamsalon/feature/salon/index.dart';
import 'package:jamsalon/feature/history/index.dart';
import 'package:jamsalon/feature/search/index.dart';
import 'package:jamsalon/feature/search_location/index.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

final Map<String, WidgetBuilder> appRoutes = {
  '/salon': (BuildContext context) => SalonPage(),
  '/history': (BuildContext context) => HistoryPage(),
  '/search': (BuildContext context) => SearchPage(),
  '/search_location': (BuildContext context) => SearchLocationPage(),
};
