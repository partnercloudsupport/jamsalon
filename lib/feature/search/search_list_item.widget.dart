import 'package:flutter/material.dart';

class SearchListItem extends StatelessWidget {
  final String item;

  SearchListItem({@required this.item});
  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(this.item));
  }
}
