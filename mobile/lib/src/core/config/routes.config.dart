import 'package:flutter/material.dart';
import 'package:jamsalon/src/feature/_.index.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

final Map<String, WidgetBuilder> appRoutes = {
  '/register': (BuildContext context) => RegisterPage(),
  '/sign_in': (BuildContext context) => SignInPage(),
  '/profile': (BuildContext context) => ProfilePage(),
  '/settings': (BuildContext context) => SettingsPage(),
  '/check_in': (BuildContext context) => CheckInPage(),
  '/history': (BuildContext context) => HistoryPage(),
  '/salon_list': (BuildContext context) => SalonListPage(),
  '/salon': (BuildContext context) => SalonPage(),
  '/search_location': (BuildContext context) => SearchLocationPage(),
};
