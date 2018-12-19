import 'package:meta/meta.dart';
import 'package:redux/redux.dart';
import 'package:jamsalon/shared/store/index.dart';
import 'package:jamsalon/shared/model/index.dart';

class PredictionListViewModel {
  final List<Location> list;

  const PredictionListViewModel({
    @required this.list,
  });

  PredictionListViewModel.fromStore(Store<AppState> store)
      : list = store.state.searchLocationState.predictionList;
}
