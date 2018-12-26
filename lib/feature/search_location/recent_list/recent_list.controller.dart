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

class RecentListViewModel {
  final List<JamLocation> list;
  final Function() fetchList;

  const RecentListViewModel({
    @required this.list,
    @required this.fetchList,
  });

  RecentListViewModel.fromStore(Store<AppState> store)
      : list = store.state.searchLocationState.recentList,
        fetchList = (() => store.dispatch(FetchRecentListAction()));
}

class RecentListController {
  static StoreConnector<AppState, RecentListViewModel> storeConnector(
      {@required Function(RecentListViewModel vm) builder}) {
    return StoreConnector(
      converter: (Store<AppState> store) =>
          RecentListViewModel.fromStore(store),
      onInit: (Store<AppState> store) =>
          store.dispatch(FetchRecentListAction()),
      builder: (BuildContext context, RecentListViewModel vm) => builder(vm),
    );
  }

  static SearchLocationState reducer(
      SearchLocationState state, FetchRecentListSuccessAction action) {
    return state.copyWith(recentList: action.list);
  }

  static Stream<FetchRecentListSuccessAction> middleware(
    Stream<FetchRecentListAction> action,
    EpicStore<AppState> store,
  ) {
    return Observable(action)
        .map((action) => [
              JamLocation(
                name: 'New Perungulathur',
                address:
                    'SSM Nagar,SSM நகர், Alappakam, New Perungalathur, Chennai.',
                geoPoint: GeoPoint(12.8918714, 80.1087996),
              ),
              JamLocation(
                name: 'Vadapalani',
                address:
                    'Sampath Marriage Hall, Pole Star, 1st Main Road, Chennai.',
                geoPoint: GeoPoint(1.0, 1.0),
              ),
              JamLocation(
                name: 'Muthammal Colony',
                address:
                    '4/281, Opp. Panchayat Office, Ettayapuram Road, Muthammal Colony, Thoothukudi.',
                geoPoint: GeoPoint(1.0, 1.0),
              ),
              JamLocation(
                name: 'Porur',
                address: 'No.3, Anna Road, Porur, Chennai.',
                geoPoint: GeoPoint(1.0, 1.0),
              ),
            ])
        .map((list) => FetchRecentListSuccessAction(list));
  }
}
