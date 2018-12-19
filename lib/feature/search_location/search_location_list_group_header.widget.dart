import 'package:flutter/material.dart';

class SearchLocationListGroupHeader extends StatelessWidget {
  final String text;

  const SearchLocationListGroupHeader({
    Key key,
    this.text = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        this.text,
        style: Theme.of(context).textTheme.body2.copyWith(
              color: Theme.of(context).accentColor,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
