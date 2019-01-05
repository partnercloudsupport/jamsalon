import 'package:flutter/material.dart';
import '../../shared/build_bottom_navigation_bar.function.dart';
import 'build_app_bar.function.dart';
import 'check_in_list.widget.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context),
      bottomNavigationBar: buildBottomNavigationBar(context, 2),
      body: CheckInList(),
    );
  }
}
