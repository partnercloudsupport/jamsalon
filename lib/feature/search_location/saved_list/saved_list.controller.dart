import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:redux/redux.dart';
import 'package:jamsalon/shared/store/index.dart';
import 'package:jamsalon/shared/model/index.dart';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

import '../store/index.dart';

class SavedListViewModel {
  final List<JamLocation> list;
  final Function() fetchList;

  const SavedListViewModel({
    @required this.list,
    @required this.fetchList,
  });

  SavedListViewModel.fromStore(Store<AppState> store)
      : list = store.state.searchLocationState.savedList,
        fetchList = (() => store.dispatch(FetchSavedListAction()));
}

class SavedListController {
  static StoreConnector<AppState, SavedListViewModel> storeConnector(
      {@required Function(SavedListViewModel vm) builder}) {
    return StoreConnector(
      converter: (Store<AppState> store) => SavedListViewModel.fromStore(store),
      onInit: (Store<AppState> store) => store.dispatch(FetchSavedListAction()),
      builder: (BuildContext context, SavedListViewModel vm) => builder(vm),
    );
  }

  static SearchLocationState reducer(
      SearchLocationState state, FetchSavedListSuccessAction action) {
    return state.copyWith(savedList: action.list);
  }

  static Stream<FetchSavedListSuccessAction> middleware(
    Stream<FetchSavedListAction> action,
    EpicStore<AppState> store,
  ) {
    return Observable(action)
        .map((action) => [
              JamLocation(
                name: 'Home',
                address:
                    'Nungambakkam Railway Station, Sowrashtra Nagar, Choolaimedu, Chennai.',
                geoPoint: GeoPoint(13.0663523, 80.2285082),
              ),
              JamLocation(
                name: 'Other',
                address:
                    'Sampath Marriage Hall, Pole Star, 1st Main Road, Chennai.',
                geoPoint: GeoPoint(1.0, 1.0),
              ),
              JamLocation(
                name: 'Other',
                address:
                    '4/281, Opp. Panchayat Office, Ettayapuram Road, Muthammal Colony, Thoothukudi.',
                geoPoint: GeoPoint(1.0, 1.0),
              ),
              JamLocation(
                name: 'Other',
                address: '112, Main Road, Porur, Chennai.',
                geoPoint: GeoPoint(1.0, 1.0),
              ),
            ])
        .map((list) => FetchSavedListSuccessAction(list));
  }
}
