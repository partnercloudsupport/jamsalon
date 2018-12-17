import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final Function onChanged;

  SearchBar({this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      decoration: InputDecoration(
        hintText: 'Search for area, street name ...',
        border: InputBorder.none,
      ),
      onChanged: this.onChanged('test'),
    );
  }
}
