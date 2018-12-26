import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

import 'package:jamsalon/shared/store/app.state.dart';
import 'package:jamsalon/shared/store/app.reducer.dart';
import 'package:jamsalon/shared/service/database.service.dart';
import 'package:jamsalon/feature/salon/index.dart';
import 'package:jamsalon/feature/search_location/index.dart';

class AppStore {
  ///
  /// Initialize Store
  ///
  static Store<AppState> initialize() {
    ///
    /// Initialize Database
    ///
    DatabaseService.initialize();

    ///
    /// Build and return store
    ///
    return Store(
      appReducer,
      initialState: AppState.initialize(),
      middleware: <Middleware<AppState>>[
        EpicMiddleware(salonMiddleware),
        EpicMiddleware(searchLocationMiddleware),
      ],
    );
  }
}
