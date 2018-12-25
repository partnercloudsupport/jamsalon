import 'dart:async';

import "package:google_maps_webservice/places.dart";
import 'package:redux/redux.dart';

import 'package:jamsalon/shared/model/index.dart';
import 'package:jamsalon/shared/store/index.dart';
import 'package:jamsalon/feature/salon/index.dart';
import '../current_location_button/current_location_button.controller.dart';
import '../recent_list/recent_list.controller.dart';
import '../saved_list/saved_list.controller.dart';
import '../search_bar/search_bar.controller.dart';
import 'search_location.actions.dart';

class SearchLocationMiddleware extends MiddlewareClass<AppState> {
  final GoogleMapsPlaces googleMapsPlacesApi;

  SearchLocationMiddleware({this.googleMapsPlacesApi});

  @override
  Future<void> call(
      Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);

    if (action is FetchPredictionListAction) {
      List<JamLocation> list = action.keyword.length >= 3
          ? await SearchBarController.middleware(action, googleMapsPlacesApi)
          : const [];
      next(FetchPredictionListSuccessAction(list));
    } else if (action is FetchSavedListAction) {
      SavedListController.middleware(action)
          .listen((list) => store.dispatch(FetchSavedListSuccessAction(list)));
    } else if (action is FetchRecentListAction) {
      RecentListController.middleware(action)
          .listen((list) => store.dispatch(FetchRecentListSuccessAction(list)));
    } else if (action is FetchCurrentLocationAction) {
      CurrentLocationButtonController.middleware(action).listen((geoPoint) {
        store.dispatch(FetchCurrentLocationSuccessAction(geoPoint));
        store.dispatch(SearchSalonsAction(geoPoint));
      });
    }
  }
}
