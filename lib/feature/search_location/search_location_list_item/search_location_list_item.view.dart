import 'package:flutter/material.dart';
import 'package:jamsalon/shared/model/index.dart';
import 'search_location_list_item.controller.dart';

class SearchLocationListItem extends StatelessWidget {
  final JamLocation item;
  final IconData icon;

  const SearchLocationListItem({
    @required this.item,
    this.icon = Icons.location_on,
  });

  @override
  Widget build(BuildContext context) {
    return SearchLocationListItemController.storeConnector(
      builder: (SearchLocationListItemViewModel vm) => ListTile(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            leading: Icon(this.icon),
            title: Text(this.item.name),
            subtitle: Text(this.item.address),
            onTap: () => vm.fetchCurrentLocationSuccess(this.item),
          ),
    );
  }
}
