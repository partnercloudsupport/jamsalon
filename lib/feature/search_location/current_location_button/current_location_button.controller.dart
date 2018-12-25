import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:geolocator/geolocator.dart';
import 'package:redux/redux.dart';
import 'package:rxdart/rxdart.dart';

import 'package:jamsalon/shared/store/index.dart';
import 'package:jamsalon/feature/search_location/store/index.dart';

class CurrentLocationButtonViewModel {
  final Function() fetchCurrentLocation;

  CurrentLocationButtonViewModel.fromStore(Store<AppState> store)
      : fetchCurrentLocation =
            (() => store.dispatch(FetchCurrentLocationAction()));
}

class CurrentLocationButtonController {
  static StoreConnector<AppState, CurrentLocationButtonViewModel>
      storeConnector(
              {@required
                  Function(CurrentLocationButtonViewModel vm) builder}) =>
          StoreConnector(
            converter: (Store<AppState> store) =>
                CurrentLocationButtonViewModel.fromStore(store),
            builder:
                (BuildContext context, CurrentLocationButtonViewModel vm) =>
                    builder(vm),
          );

  static SearchLocationState reducer(
      SearchLocationState state, FetchCurrentLocationSuccessAction action) {
    return state.copyWith(currentLocation: action.geoPoint);
  }

  static Observable<GeoPoint> middleware(FetchCurrentLocationAction action) {
    return Observable.fromFuture(Geolocator()
            .getCurrentPosition(desiredAccuracy: LocationAccuracy.high))
        .where((position) => position != null)
        .map((position) => GeoPoint(position.latitude, position.longitude));
  }
}
