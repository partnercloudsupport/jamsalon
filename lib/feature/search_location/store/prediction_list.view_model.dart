import 'package:jamsalon/shared/model/model.dart';
import 'package:meta/meta.dart';
import 'package:redux/redux.dart';
import 'package:jamsalon/shared/store/app.store.dart';

class PredictionListViewModel {
  final bool isKeywordTooShortToSearch;
  final List<Location> list;

  PredictionListViewModel({
    @required this.isKeywordTooShortToSearch,
    @required this.list,
  });

  PredictionListViewModel.fromStore(Store<AppState> store)
      : isKeywordTooShortToSearch =
            store.state.searchLocationState.searchKeyword.length < 3,
        list = store.state.searchLocationState.predictionList;
}
