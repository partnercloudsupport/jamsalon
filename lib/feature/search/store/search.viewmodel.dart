import 'package:redux/redux.dart';
import 'package:jamsalon/shared/store/app.state.dart';
import 'package:jamsalon/feature/search/store/search.actions.dart';

class SearchViewModel {
  final String keyword;
  final Function(String keyword) searchAction;

  SearchViewModel({
    this.keyword,
    this.searchAction,
  });

  SearchViewModel.fromStore(Store<AppState> store)
      : keyword = store.state.searchState.keyword,
        searchAction =
            ((String keyword) => store.dispatch(SearchAction(keyword)));
}
