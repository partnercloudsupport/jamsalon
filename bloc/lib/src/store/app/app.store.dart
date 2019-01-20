import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

import '../../bloc_api.dart';
import '../salon_list/index.dart';
import '../search_location/index.dart';
import '../check_in/index.dart';
import 'app.state.dart';
import 'app.reducer.dart';

class AppStore {
  ///
  /// Create Store Instance
  ///
  static Store<AppState> instance(BlocAPI api) {
    ///
    /// Build and return store
    ///
    return Store(
      appReducer,
      initialState: AppState.initialize(),
      middleware: <Middleware<AppState>>[
        EpicMiddleware(SalonListMiddleware(api).epics),
        EpicMiddleware(SearchLocationMiddleware(api).epics),
        EpicMiddleware(CheckInMiddleware(api).epics),
      ],
    );
  }
}
