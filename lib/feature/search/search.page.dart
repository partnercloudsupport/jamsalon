import 'package:flutter/material.dart';
import 'package:jamsalon/jam/jam.dart';

class SearchPage extends StatefulWidget {
  SearchPage();
  @override
  State<StatefulWidget> createState() {
    return _SearchPageState();
  }
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    print('-BUILDING- SearchPage');
    return JamSearchPage();
  }
}
