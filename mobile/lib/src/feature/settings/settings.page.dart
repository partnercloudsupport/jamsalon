import 'package:flutter/material.dart';

import '../../shared/build_bottom_navigation_bar.function.dart';
import 'settings.view.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('[Settings] -BUILDING- SettingsPage');
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black87),
        textTheme: Theme.of(context).textTheme,
        elevation: 0.0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: Container(
            height: 80.0,
            padding: EdgeInsets.only(left: 20.0, bottom: 20.0),
            alignment: Alignment.centerLeft,
            child: Text(
              'Settings',
              style: Theme.of(context)
                  .textTheme
                  .display1
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(context, 1),
      body: Settings(),
    );
  }
}
