import 'package:flutter/material.dart';
import '../..//feature/salon_list/index.dart';
import '../..//feature/history/index.dart';
import '../..//feature/search_location/index.dart';
import '../..//feature/check_in/index.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

final Map<String, WidgetBuilder> appRoutes = {
  '/salon_list': (BuildContext context) => SalonListPage(),
  '/history': (BuildContext context) => HistoryPage(),
  '/check_in': (BuildContext context) => CheckInPage(),
  '/search_location': (BuildContext context) => SearchLocationPage(),
};
