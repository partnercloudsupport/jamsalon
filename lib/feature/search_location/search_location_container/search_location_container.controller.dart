import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:jamsalon/core/config/index.dart';
import 'package:jamsalon/feature/salon/index.dart';
import 'package:jamsalon/feature/search_location/store/search_location.actions.dart';
import 'package:redux/redux.dart';

import 'package:jamsalon/shared/store/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class SearchLocationContainerViewModel {
  final bool hasUserStartedTyping;
  final bool isKeywordTooShortToSearch;

  const SearchLocationContainerViewModel({
    @required this.hasUserStartedTyping,
    @required this.isKeywordTooShortToSearch,
  });

  SearchLocationContainerViewModel.fromStore(Store<AppState> store)
      : hasUserStartedTyping =
            store.state.searchLocationState.searchKeyword.length > 0,
        isKeywordTooShortToSearch =
            store.state.searchLocationState.searchKeyword.length < 3;
}

class SearchLocationContainerController {
  static StoreConnector<AppState, SearchLocationContainerViewModel>
      storeConnector(
          {@required Function(SearchLocationContainerViewModel vm) builder}) {
    return StoreConnector(
      converter: (Store<AppState> store) =>
          SearchLocationContainerViewModel.fromStore(store),
      builder: (BuildContext context, SearchLocationContainerViewModel vm) =>
          builder(vm),
    );
  }

  static Stream<SearchSalonsAction> middleware(
    Stream<FetchCurrentLocationSuccessAction> action,
    EpicStore<AppState> store,
  ) {
    return Observable(action)
        .doOnData((action) =>
            navigatorKey.currentState.pushReplacementNamed('/salon'))
        .map((action) => SearchSalonsAction(action.location.geoPoint));
  }
}
