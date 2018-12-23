import 'package:flutter/material.dart';

class SearchLocationListItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const SearchLocationListItem({
    Key key,
    @required this.icon,
    this.title = '',
    this.subtitle = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      leading: Icon(this.icon),
      title: Text(this.title),
      subtitle: Text(this.subtitle),
    );
  }
}
