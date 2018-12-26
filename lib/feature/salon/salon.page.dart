import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:jamsalon/shared/build_bottom_navigation_bar.function.dart';
import 'search_bar/search_bar.view.dart';
import 'salon_list/salon_list.view.dart';

class SalonPage extends StatefulWidget {
  const SalonPage({Key key}) : super(key: key);

  @override
  _SalonPageState createState() => _SalonPageState();
}

class _SalonPageState extends State<SalonPage> {
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
