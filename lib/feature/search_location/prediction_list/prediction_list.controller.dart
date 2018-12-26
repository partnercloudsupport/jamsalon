import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'package:jamsalon/shared/model/index.dart';
import 'package:jamsalon/shared/store/index.dart';

class PredictionListViewModel {
  final List<JamLocation> list;

  PredictionListViewModel.fromStore(Store<AppState> store)
      : list = store.state.searchLocationState.predictionList;
}

class PredictionListController {
  static StoreConnector<AppState, PredictionListViewModel> storeConnector(
      {@required Function(PredictionListViewModel vm) builder}) {
    return StoreConnector(
      converter: (Store<AppState> store) =>
          PredictionListViewModel.fromStore(store),
      builder: (BuildContext context, PredictionListViewModel vm) =>
          builder(vm),
    );
  }
}
