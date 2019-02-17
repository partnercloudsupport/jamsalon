import '_.imports.dart';

class PredictionListViewModel {
  final List<Location> list;

  PredictionListViewModel.fromStore(Store<AppState> store)
      : list = store.state.searchLocationState.predictionList;
}
