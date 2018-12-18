import 'package:jamsalon/shared/model/model.dart';
import 'package:meta/meta.dart';
import 'package:redux/redux.dart';
import 'package:jamsalon/shared/store/app.store.dart';

class PredictionListViewModel {
  final List<Location> list;

  const PredictionListViewModel({
    @required this.list,
  });

  PredictionListViewModel.fromStore(Store<AppState> store)
      : list = store.state.searchLocationState.predictionList;
}
