import 'package:flutter/material.dart';
import 'package:jamsalon/feature/search_location/search_bar.widget.dart';
import 'package:jamsalon/feature/search_location/initial_list.widget.dart';

class SearchLocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('-BUILDING- SearchLocationPage');
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87),
        brightness: Brightness.light,
        title: SearchBar(onChanged: (String keyword) {}),
        centerTitle: true,
        elevation: 1.0,
      ),
      body: InitialList(),
    );
  }
}
