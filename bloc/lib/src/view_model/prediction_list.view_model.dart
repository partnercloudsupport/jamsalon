import 'package:jam_dart_models/models.dart';
import 'package:redux/redux.dart';

import '../store/index.dart';

class PredictionListViewModel {
  final List<Location> list;

  PredictionListViewModel.fromStore(Store<AppState> store)
      : list = store.state.searchLocationState.predictionList;
}
