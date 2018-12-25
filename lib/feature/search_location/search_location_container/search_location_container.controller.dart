import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'package:jamsalon/shared/store/index.dart';

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
              {@required
                  Function(SearchLocationContainerViewModel vm) builder}) =>
          StoreConnector(
            converter: (Store<AppState> store) =>
                SearchLocationContainerViewModel.fromStore(store),
            builder:
                (BuildContext context, SearchLocationContainerViewModel vm) =>
                    builder(vm),
          );
}
