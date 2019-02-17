import 'package:redux/redux.dart';

import '../../bloc_api.dart';
import 'app.state.dart';
import 'app.reducer.dart';
import 'app.middleware.dart';

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
      middleware: appMiddleware(api),
    );

    return _instance;
  }
}
