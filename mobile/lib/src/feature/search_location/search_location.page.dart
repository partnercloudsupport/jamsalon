import 'package:flutter/material.dart';

import 'search_bar.view.dart';
import 'search_location_container.view.dart';

class SearchLocationPage extends StatelessWidget {
  const SearchLocationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('-BUILDING- SearchLocationPage');
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black87),
        title: SearchBar(),
        centerTitle: true,
        elevation: 1.0,
      ),
      body: SearchLocationContainer(),
    );
  }
}
