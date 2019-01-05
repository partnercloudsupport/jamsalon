import 'package:flutter/material.dart';

class SearchLocationTitledContainer extends StatelessWidget {
  final String title;
  final Widget child;

  const SearchLocationTitledContainer({
    @required this.title,
    @required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      ListTile(
        title: Text(
          this.title,
          style: Theme.of(context).textTheme.body2.copyWith(
                color: Theme.of(context).accentColor,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      this.child
    ]);
  }
}
