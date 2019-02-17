import '_.imports.dart';

class CurrentLocationButtonViewModel {
  final Function() fetchCurrentLocation;

  CurrentLocationButtonViewModel.fromStore(Store<AppState> store)
      : fetchCurrentLocation =
            (() => store.dispatch(FetchCurrentLocationAction()));
}
