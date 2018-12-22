import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geolocator/geolocator.dart';
import "package:google_maps_webservice/places.dart";
import 'package:jamsalon/feature/salon/index.dart';
import 'package:redux/redux.dart';
import 'package:rxdart/rxdart.dart';

import 'package:jamsalon/core/config/map.config.dart';
import 'package:jamsalon/shared/store/index.dart';
import 'package:jamsalon/shared/model/index.dart';
import 'package:jamsalon/feature/search_location/store/search_location.actions.dart';

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
        PlacesSearchResponse response = await googleMapsPlacesApi.searchByText(
          action.keyword,
          location: Location(
            MapConfig.BIASED_LOCATION_LATITUDE,
            MapConfig.BIASED_LOCATION_LONGITUDE,
          ),
          radius: MapConfig.BIASED_LOCATION_RADIUS * 1000,
        );
        list = response.results
            .map((place) => JamLocation(
                  name: place.name,
                  address: place.formattedAddress,
                ))
            .toList();
      }
      next(FetchPredictionListSuccessAction(list));
    } else if (action is FetchSavedListAction) {
      // Tables.salon
      //     .get('rockstar-salon')
      //     .map((item) => item?.name)
      //     .listen(print);
    } else if (action is FetchCurrentLocationAction) {
      Observable.fromFuture(Geolocator()
              .getCurrentPosition(desiredAccuracy: LocationAccuracy.high))
          .where((position) => position != null)
          .doOnData(print)
          .listen((position) => store.dispatch(SearchSalonsAction(
              geoPoint: GeoPoint(position.latitude, position.longitude))));
    }
  }
}
