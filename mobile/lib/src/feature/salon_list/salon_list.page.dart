import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../shared/build_bottom_navigation_bar.function.dart';
import 'search_bar.view.dart';
import 'salon_list.view.dart';

class SalonListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('-BUILDING- SalonPage');
    return Scaffold(
      bottomNavigationBar: buildBottomNavigationBar(context, 1),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SearchBar(),
            SalonList(),
          ],
        ),
      ),
    );
  }
}