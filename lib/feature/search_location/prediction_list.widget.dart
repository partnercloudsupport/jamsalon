import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:jamsalon/core/config/ui.config.dart';
import 'package:jamsalon/shared/store/app.store.dart';
import 'package:jamsalon/feature/search_location/store/search_location.store.dart';

class PredictionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PredictionListViewModel>(
      converter: (Store<AppState> store) =>
          PredictionListViewModel.fromStore(store),
      builder: (BuildContext context, PredictionListViewModel vm) => Container(
            padding: const EdgeInsets.only(top: 20.0),
            child: vm.isKeywordTooShortToSearch
                ? Container(
                    height: 60.0,
                    alignment: Alignment.center,
                    child: Text(SEARCH_LOCATION_HINT_TEXT),
                  )
                : ListView(
                    children: vm.list
                        .map((item) => ListTile(
                              leading: Icon(Icons.location_on),
                              title: Text(item.name),
                              subtitle: Text(item.address),
                            ))
                        .toList(),
                  ),
          ),
    );
  }
}
