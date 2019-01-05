import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  final Function searchFn;

  const SearchButton({Key key, this.searchFn}) : super(key: key);

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
