import 'package:flutter/material.dart';

import '../../core/store_connectors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnectors.searchLocationSearchBar(
      builder: (vm) => TextField(
            autofocus: true,
            decoration: InputDecoration(
              hintText: UiConfig.SEARCH_LOCATION_HINT_TEXT,
              border: InputBorder.none,
            ),
            onChanged: (String text) => vm.getPredictionList(text),
          ),
    );
  }
}
