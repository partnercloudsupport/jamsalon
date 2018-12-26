import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:jamsalon/feature/salon/store/salon.actions.dart';
import 'package:jamsalon/feature/salon/store/salon.state.dart';
import 'package:jamsalon/shared/service/database.service.dart';
import 'package:redux/redux.dart';

import 'package:jamsalon/shared/model/index.dart';
import 'package:jamsalon/shared/store/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class SalonListViewModel {
  final List<Salon> list;

  SalonListViewModel.fromStore(Store<AppState> store)
      : list = store.state.salonState.list;
}

class SalonListController {
  static StoreConnector<AppState, SalonListViewModel> storeConnector(
      {@required Function(SalonListViewModel vm) builder}) {
    return StoreConnector(
      converter: (Store<AppState> store) => SalonListViewModel.fromStore(store),
      builder: (BuildContext context, SalonListViewModel vm) => builder(vm),
    );
  }

  static SalonState reducer(
      SalonState state, SearchSalonsSuccessAction action) {
    return state.copyWith(list: action.list);
  }

  static Stream<SearchSalonsSuccessAction> middleware(
    Stream<SearchSalonsAction> action,
    EpicStore<AppState> store,
  ) {
    return Observable(action)
        .switchMap((action) => DatabaseService.tables.salon
            .findAround(action.geoPoint, action.radiusInKm))
        .map((list) => SearchSalonsSuccessAction(list: list));
  }
}
