import '_.imports.dart';

class SearchLocationContainerViewModel {
  final bool hasUserStartedTyping;
  final bool isKeywordTooShortToSearch;

  SearchLocationContainerViewModel.fromStore(Store<AppState> store)
      : hasUserStartedTyping =
            store.state.searchLocationState.searchKeyword.length > 0,
        isKeywordTooShortToSearch =
            store.state.searchLocationState.searchKeyword.length < 3;
}
