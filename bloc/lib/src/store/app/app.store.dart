import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

import '../../jamsalon_api.dart';
import '../../model/tables.model.dart';
import '../salon_list/index.dart';
import '../search_location/index.dart';
import '../check_in/index.dart';
import 'app.state.dart';
import 'app.reducer.dart';

class AppStore {
  ///
  /// Create Store Instance
  ///
  static Store<AppState> instance(JamsalonApi api) {
    ///
    /// Initialize Store
    ///
    _initialize(api);

    ///
    /// Build and return store
    ///
    return Store(
      appReducer,
      initialState: AppState.initialize(),
      middleware: <Middleware<AppState>>[
        EpicMiddleware(SalonListMiddleware(api).epics),
        EpicMiddleware(SearchLocationMiddleware(api).epics),
        EpicMiddleware(checkInMiddleware),
      ],
    );
  }

  ///
  /// Initialize Store
  ///
  static void _initialize(JamsalonApi api) {
    ///
    /// Initialize Database
    ///
    Tables.construct(api.databaseService.tables);
  }
}
