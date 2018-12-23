import 'dart:async';

import "package:google_maps_webservice/places.dart";
import 'package:jamsalon/feature/search_location/view/recent_list.controller.dart';
import 'package:jamsalon/feature/search_location/view/search_bar.controller.dart';
import 'package:redux/redux.dart';

import 'package:jamsalon/core/config/map.config.dart';
import 'package:jamsalon/shared/store/index.dart';
import 'package:jamsalon/shared/model/index.dart';
import 'package:jamsalon/feature/salon/index.dart';
import '../view/current_location_button.controller.dart';
import 'search_location.actions.dart';

class SearchLocationMiddleware extends MiddlewareClass<AppState> {
  final GoogleMapsPlaces googleMapsPlacesApi;

  SearchLocationMiddleware({this.googleMapsPlacesApi});

  @override
  Future<void> call(
      Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);

    if (action is FetchPredictionListAction) {
      List<JamLocation> list = List.unmodifiable(const <Location>[]);
      if (action.keyword.length >= 3) {
        list =
            await SearchBarController.middleware(action, googleMapsPlacesApi);
      }
      next(FetchPredictionListSuccessAction(list));
    } else if (action is FetchSavedListAction) {
    } else if (action is FetchRecentListAction) {
      RecentListController.middleware(action)
          .listen((list) => store.dispatch(FetchRecentListSuccessAction(list)));
    } else if (action is FetchCurrentLocationAction) {
      CurrentLocationButtonController.middleware(action).listen((geoPoint) {
        store.dispatch(FetchCurrentLocationSuccessAction(geoPoint));
        store.dispatch(SearchSalonsAction(geoPoint));
      });
      // CurrentLocationViewModel.middleware(action).listen((position) =>
      //     store.dispatch(SearchSalonsAction(
      //         geoPoint: GeoPoint(position.latitude, position.longitude))));
    }
  }
}
