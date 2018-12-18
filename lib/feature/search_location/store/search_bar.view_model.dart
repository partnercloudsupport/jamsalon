import 'package:meta/meta.dart';
import 'package:redux/redux.dart';
import 'package:jamsalon/shared/store/app.store.dart';
import 'package:jamsalon/feature/search_location/store/search_location.actions.dart';

class SearchBarViewModel {
  final String searchKeyword;
  final Function(String keyword) getPredictionList;

  const SearchBarViewModel({
    @required this.searchKeyword,
    @required this.getPredictionList,
  });

  SearchBarViewModel.fromStore(Store<AppState> store)
      : searchKeyword = store.state.searchLocationState.searchKeyword,
        getPredictionList = ((String keyword) =>
            store.dispatch(FetchPredictionListAction(keyword)));
}
