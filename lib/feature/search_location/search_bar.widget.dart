import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:jamsalon/shared/store/app.store.dart';
import 'package:jamsalon/feature/search_location/store/search_location.store.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SearchBarViewModel>(
      converter: (Store<AppState> store) => SearchBarViewModel.fromStore(store),
      builder: (BuildContext context, SearchBarViewModel vm) => TextField(
            autofocus: true,
            decoration: InputDecoration(
              hintText: 'Search for area, street name ...',
              border: InputBorder.none,
            ),
            onChanged: (String text) => vm.getPredictionList(text),
          ),
    );
  }
}
