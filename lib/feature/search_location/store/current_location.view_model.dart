import 'package:meta/meta.dart';
import 'package:redux/redux.dart';
import 'package:jamsalon/shared/store/app.store.dart';
import 'package:jamsalon/feature/search_location/store/search_location.actions.dart';

class CurrentLocationViewModel {
  final Function() fetchCurrentLocation;

  const CurrentLocationViewModel({
    @required this.fetchCurrentLocation,
  });

  CurrentLocationViewModel.fromStore(Store<AppState> store)
      : fetchCurrentLocation =
            (() => store.dispatch(FetchCurrentLocationAction()));
}
