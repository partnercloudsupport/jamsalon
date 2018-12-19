import 'package:meta/meta.dart';
import 'package:redux/redux.dart';
import 'package:jamsalon/shared/store/index.dart';

class SearchLocationViewModel {
  final bool hasUserStartedTyping;
  final bool isKeywordTooShortToSearch;

  const SearchLocationViewModel({
    @required this.hasUserStartedTyping,
    @required this.isKeywordTooShortToSearch,
  });

  SearchLocationViewModel.fromStore(Store<AppState> store)
      : hasUserStartedTyping =
            store.state.searchLocationState.searchKeyword.length > 0,
        isKeywordTooShortToSearch =
            store.state.searchLocationState.searchKeyword.length < 3;
}
