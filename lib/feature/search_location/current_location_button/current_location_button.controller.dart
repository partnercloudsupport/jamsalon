import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:geolocator/geolocator.dart';
import 'package:jamsalon/shared/model/index.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
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
          {@required Function(CurrentLocationButtonViewModel vm) builder}) {
    return StoreConnector(
      converter: (Store<AppState> store) =>
          CurrentLocationButtonViewModel.fromStore(store),
      builder: (BuildContext context, CurrentLocationButtonViewModel vm) =>
          builder(vm),
    );
  }

  static SearchLocationState reducer(
      SearchLocationState state, FetchCurrentLocationSuccessAction action) {
    return state.copyWith(selectedLocation: action.location);
  }

  static Stream<FetchCurrentLocationSuccessAction> middleware(
    Stream<FetchCurrentLocationAction> action,
    EpicStore<AppState> store,
  ) {
    return Observable(action)
        .asyncMap((action) => Geolocator()
            .getCurrentPosition(desiredAccuracy: LocationAccuracy.high))
        .where((position) => position != null)
        .map((position) => JamLocation(
              name: position.latitude.toString() +
                  ', ' +
                  position.longitude.toString(),
              geoPoint: GeoPoint(position.latitude, position.longitude),
            ))
        .map((geoPoint) => FetchCurrentLocationSuccessAction(geoPoint));
  }
}
