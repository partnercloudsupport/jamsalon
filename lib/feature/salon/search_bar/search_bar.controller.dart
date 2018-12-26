import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'package:jamsalon/core/config/ui.config.dart';
import 'package:jamsalon/core/config/routes.config.dart';
import 'package:jamsalon/shared/model/index.dart';
import 'package:jamsalon/shared/store/index.dart';

class SearchBarViewModel {
  final JamLocation selectedLocation;
  final Function() showSearchPage;

  SearchBarViewModel.fromStore(Store<AppState> store)
      : selectedLocation = store.state.searchLocationState.selectedLocation ??
            JamLocation(name: UiConfig.SALON_SEARCH_BAR_DEFAULT_TEXT),
        showSearchPage =
            (() => navigatorKey.currentState.pushNamed('/search_location'));
}

class SearchBarController {
  static StoreConnector<AppState, SearchBarViewModel> storeConnector(
      {@required Function(SearchBarViewModel vm) builder}) {
    return StoreConnector(
      converter: (Store<AppState> store) => SearchBarViewModel.fromStore(store),
      builder: (BuildContext context, SearchBarViewModel vm) => builder(vm),
    );
  }
}
