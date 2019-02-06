import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

import '../../bloc_api.dart';
import '../auth/index.dart';
import '../salon_list/index.dart';
import '../search_location/index.dart';
import '../check_in/index.dart';
import 'app.state.dart';
import 'app.reducer.dart';

class AppStore {
  static bool _isInitialized = false;

  static Store<AppState> _instance;

  ///
  /// Create Store Instance
  ///
  static Store<AppState> instance(BlocAPI api) {
    ///
    /// If instance exists, return it.
    ///
    if (AppStore._isInitialized) {
      return AppStore._instance;
    }

    ///
    /// Else create instance and return it.
    ///
    AppStore._instance = Store<AppState>(
      appReducer,
      initialState: AppState.initialize(),
      middleware: <Middleware<AppState>>[
        EpicMiddleware(AuthMiddleware(api).epics),
        EpicMiddleware(SalonListMiddleware(api).epics),
        EpicMiddleware(SearchLocationMiddleware(api).epics),
        EpicMiddleware(CheckInMiddleware(api).epics),
      ],
    );

    return _instance;
  }
}
