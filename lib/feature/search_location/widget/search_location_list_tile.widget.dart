import 'package:flutter/material.dart';
import 'package:jamsalon/shared/model/index.dart';

class SearchLocationListTile extends StatelessWidget {
  final JamLocation item;
  final IconData icon;

  const SearchLocationListTile({
    @required this.item,
    this.icon = Icons.location_on,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      leading: Icon(this.icon),
      title: Text(this.item.name),
      subtitle: Text(this.item.address),
    );
  }
}
