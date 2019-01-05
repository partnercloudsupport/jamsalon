import 'package:redux/redux.dart';

import '../store/index.dart';

class CurrentLocationButtonViewModel {
  final Function() fetchCurrentLocation;

  CurrentLocationButtonViewModel.fromStore(Store<AppState> store)
      : fetchCurrentLocation =
            (() => store.dispatch(FetchCurrentLocationAction()));
}
