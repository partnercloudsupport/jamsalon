import 'package:jamsalon/feature/history/check_in_expansion_list.widget.dart';
import 'package:flutter/material.dart';
import 'package:jamsalon/feature/history/build_app_bar.function.dart';
import 'package:jamsalon/shared/build_bottom_navigation_bar.function.dart';
import 'package:jamsalon/feature/history/check_in_list.widget.dart';

class HistoryPage extends StatelessWidget {
  HistoryPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      bottomNavigationBar: buildBottomNavigationBar(context, 2),
      body: CheckInList(),
    );
  }
}
