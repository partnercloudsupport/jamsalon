import 'package:flutter/material.dart';
import 'package:jamsalon/feature/salon/salon.page.dart';
import 'package:jamsalon/feature/history/history.page.dart';

final Map<String, WidgetBuilder> routes = {
  '/salon': (BuildContext context) => SalonPage(),
  '/history': (BuildContext context) => HistoryPage(),
};
