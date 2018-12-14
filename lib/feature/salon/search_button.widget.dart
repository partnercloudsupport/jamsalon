import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  final Function searchFn;

  SearchButton(this.searchFn);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.black12,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      onPressed: () => searchFn(),
      child: Text(
        'Search',
        style: TextStyle(
          color: Colors.blue,
        ),
      ),
    );
  }
}
