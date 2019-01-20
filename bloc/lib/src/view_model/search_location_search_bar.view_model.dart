import 'package:redux/redux.dart';

import '../store/index.dart';

class SearchLocationSearchBarViewModel {
  final String searchKeyword;
  final Function(String keyword) getPredictionList;

  SearchLocationSearchBarViewModel.fromStore(Store<AppState> store)
      : searchKeyword = store.state.searchLocationState.searchKeyword,
        getPredictionList =
            ((String keyword) => store.dispatch(FetchPredictionListAction(keyword)));
}
