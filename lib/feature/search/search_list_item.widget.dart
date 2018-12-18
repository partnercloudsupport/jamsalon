import 'package:flutter/material.dart';

class SearchListItem extends StatelessWidget {
  final String item;

  const SearchListItem({Key key, @required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(this.item));
  }
}
