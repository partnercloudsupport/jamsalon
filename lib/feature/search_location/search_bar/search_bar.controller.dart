import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:jamsalon/core/config/map.config.dart';
import 'package:jamsalon/shared/model/index.dart';
import 'package:redux/redux.dart';

import 'package:jamsalon/shared/store/index.dart';
import 'package:jamsalon/feature/search_location/store/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class SearchBarViewModel {
  final String searchKeyword;
  final Function(String keyword) getPredictionList;

  const SearchBarViewModel({
    @required this.searchKeyword,
    @required this.getPredictionList,
  });

  SearchBarViewModel.fromStore(Store<AppState> store)
      : searchKeyword = store.state.searchLocationState.searchKeyword,
        getPredictionList = ((String keyword) =>
            store.dispatch(FetchPredictionListAction(keyword)));
}

class SearchBarController {
  static StoreConnector<AppState, SearchBarViewModel> storeConnector(
      {@required Function(SearchBarViewModel vm) builder}) {
    return StoreConnector(
      converter: (Store<AppState> store) => SearchBarViewModel.fromStore(store),
      builder: (BuildContext context, SearchBarViewModel vm) => builder(vm),
    );
  }

  static SearchLocationState reducer(
      SearchLocationState state, FetchPredictionListSuccessAction action) {
    return state.copyWith(predictionList: action.list);
  }

  static Stream<FetchPredictionListSuccessAction> middleware(
    Stream<FetchPredictionListAction> action,
    EpicStore<AppState> store,
  ) {
    return Observable(action)
        .where((action) => action.keyword.length >= 3)
        .asyncMap((action) => GoogleMapsPlaces().searchByText(
              action.keyword,
              location: Location(
                MapConfig.BIASED_LOCATION_LATITUDE,
                MapConfig.BIASED_LOCATION_LONGITUDE,
              ),
              radius: MapConfig.BIASED_LOCATION_RADIUS * 1000,
            ))
        .map((response) => response.results
            .map((place) => JamLocation(
                  name: place.name,
                  address: place.formattedAddress,
                ))
            .toList())
        .map((list) => FetchPredictionListSuccessAction(list));
  }
}
