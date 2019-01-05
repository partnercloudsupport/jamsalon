import 'package:jam_dart_models/models.dart';
import 'package:redux/redux.dart';

import '../store/index.dart';

class SearchLocationListItemViewModel {
  final Function(Location location) fetchCurrentLocationSuccess;

  SearchLocationListItemViewModel.fromStore(Store<AppState> store)
      : fetchCurrentLocationSuccess =
            ((Location location) => store.dispatch(FetchCurrentLocationSuccessAction(location)));
}
