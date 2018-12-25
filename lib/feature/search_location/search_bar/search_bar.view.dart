import 'package:flutter/material.dart';
import 'package:jamsalon/core/config/ui.config.dart';
import 'search_bar.controller.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SearchBarController.storeConnector(
      builder: (SearchBarViewModel vm) => TextField(
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
