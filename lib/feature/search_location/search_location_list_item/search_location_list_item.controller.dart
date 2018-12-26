import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'package:jamsalon/shared/model/index.dart';
import 'package:jamsalon/shared/store/index.dart';
import 'package:jamsalon/feature/search_location/store/index.dart';

class SearchLocationListItemViewModel {
  final Function(JamLocation location) fetchCurrentLocationSuccess;

  SearchLocationListItemViewModel.fromStore(Store<AppState> store)
      : fetchCurrentLocationSuccess = ((JamLocation location) =>
            store.dispatch(FetchCurrentLocationSuccessAction(location)));
}

class SearchLocationListItemController {
  static StoreConnector<AppState, SearchLocationListItemViewModel>
      storeConnector(
          {@required Function(SearchLocationListItemViewModel vm) builder}) {
    return StoreConnector(
      converter: (Store<AppState> store) =>
          SearchLocationListItemViewModel.fromStore(store),
      builder: (BuildContext context, SearchLocationListItemViewModel vm) =>
          builder(vm),
    );
  }
}
