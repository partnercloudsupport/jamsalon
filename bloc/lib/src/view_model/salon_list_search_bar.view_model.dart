import 'package:redux/redux.dart';
import 'package:jam_dart_models/models.dart';

import '../config/ui.config.dart';
import '../store/app/index.dart';

class SalonListSearchBarViewModel {
  final Location selectedLocation;

  SalonListSearchBarViewModel.fromStore(Store<AppState> store)
      : selectedLocation = store.state.searchLocationState.selectedLocation ??
            Location(name: UiConfig.SALON_SEARCH_BAR_DEFAULT_TEXT);
}
