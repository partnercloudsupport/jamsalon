import '_.imports.dart';

class SearchLocationListItemViewModel {
  final Function(Location location) fetchCurrentLocationSuccess;

  SearchLocationListItemViewModel.fromStore(Store<AppState> store)
      : fetchCurrentLocationSuccess = ((Location location) {
          return store.dispatch(FetchCurrentLocationSuccessAction(location));
        });
}
