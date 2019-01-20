import 'package:flutter/material.dart';
import '../../feature/check_in/index.dart';
import '../../feature/history/index.dart';
import '../../feature/salon/index.dart';
import '../../feature/salon_list/index.dart';
import '../../feature/search_location/index.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

final Map<String, WidgetBuilder> appRoutes = {
  '/check_in': (BuildContext context) => CheckInPage(),
  '/history': (BuildContext context) => HistoryPage(),
  '/salon_list': (BuildContext context) => SalonListPage(),
  '/salon': (BuildContext context) => SalonPage(),
  '/search_location': (BuildContext context) => SearchLocationPage(),
};
