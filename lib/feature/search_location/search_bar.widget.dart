import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:jamsalon/core/config/ui.config.dart';
import 'package:jamsalon/shared/store/index.dart';
import 'package:jamsalon/feature/search_location/store/index.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SearchBarViewModel>(
      converter: (Store<AppState> store) => SearchBarViewModel.fromStore(store),
      builder: (BuildContext context, SearchBarViewModel vm) => TextField(
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
