import '_.imports.dart';

class SalonListSearchBarViewModel {
  final Location selectedLocation;

  SalonListSearchBarViewModel.fromStore(Store<AppState> store)
      : selectedLocation = store.state.searchLocationState.selectedLocation ??
            Location(name: UiConfig.SALON_SEARCH_BAR_DEFAULT_TEXT);
}
