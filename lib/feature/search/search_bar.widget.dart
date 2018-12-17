import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final Function searchFn;

  SearchBar({@required this.searchFn});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        autofocus: true,
        decoration: InputDecoration.collapsed(hintText: 'Search'),
        onChanged: (String text) => this.searchFn(text),
      ),
    );
  }
}
