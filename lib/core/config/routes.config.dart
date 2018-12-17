import 'package:flutter/material.dart';
import 'package:jamsalon/feature/salon/salon.dart';
import 'package:jamsalon/feature/history/history.dart';
import 'package:jamsalon/feature/search/search.dart';
import 'package:jamsalon/feature/search_location/search_location.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/salon': (BuildContext context) => SalonPage(),
  '/history': (BuildContext context) => HistoryPage(),
  '/search': (BuildContext context) => SearchPage(),
  '/search_location': (BuildContext context) => SearchLocationPage(),
};
