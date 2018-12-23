import 'package:meta/meta.dart';
import 'package:redux/redux.dart';
import 'package:jamsalon/shared/store/index.dart';
import 'package:jamsalon/shared/model/index.dart';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
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
          {@required Function(SavedListViewModel vm) builder}) =>
      StoreConnector(
        converter: (Store<AppState> store) =>
            SavedListViewModel.fromStore(store),
        onInit: (Store<AppState> store) =>
            store.dispatch(FetchSavedListAction()),
        builder: (BuildContext context, SavedListViewModel vm) => builder(vm),
      );

  static SearchLocationState reducer(
      SearchLocationState state, FetchSavedListSuccessAction action) {
    return state.copyWith(savedList: action.list);
  }

  static Observable<List<JamLocation>> middleware(FetchSavedListAction action) {
    return Observable.just([
      JamLocation(
        name: 'Home',
        address:
            'No.20, Near Grace Super Market, 88th Street, Sector 15, Kamarajar Salai, Chennai.',
      ),
      JamLocation(
        name: 'Other',
        address: 'Sampath Marriage Hall, Pole Star, 1st Main Road, Chennai.',
      ),
      JamLocation(
        name: 'Other',
        address:
            '4/281, Opp. Panchayat Office, Ettayapuram Road, Muthammal Colony, Thoothukudi.',
      ),
      JamLocation(
        name: 'Other',
        address: '112, Main Road, Porur, Chennai.',
      ),
    ]);
  }
}
