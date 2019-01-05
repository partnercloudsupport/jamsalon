import 'package:flutter/material.dart';
import 'package:jam_dart_models/models.dart';

import '../../core/store_connectors.dart';

class SearchLocationListItem extends StatelessWidget {
  final Location item;
  final IconData icon;

  const SearchLocationListItem({
    @required this.item,
    this.icon = Icons.location_on,
  });

  @override
  Widget build(BuildContext context) {
    return StoreConnectors.searchLocationListItem(
      builder: (vm) => ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            leading: Icon(this.icon),
            title: Text(this.item.name),
            subtitle: Text(this.item.address),
            onTap: () => vm.fetchCurrentLocationSuccess(this.item),
          ),
    );
  }
}
