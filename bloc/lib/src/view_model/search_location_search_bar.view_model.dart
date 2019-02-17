import '_.imports.dart';

class SearchLocationSearchBarViewModel {
  final String searchKeyword;
  final Function(String keyword) getPredictionList;

  SearchLocationSearchBarViewModel.fromStore(Store<AppState> store)
      : searchKeyword = store.state.searchLocationState.searchKeyword,
        getPredictionList = ((String keyword) =>
            store.dispatch(FetchPredictionListAction(keyword)));
}
