import 'package:meta/meta.dart';
import 'package:redux/redux.dart';

import 'src/bloc_api.dart';
import 'src/store/index.dart';
import 'src/model/index.dart';

export 'src/config/ui.config.dart';
export 'src/model/index.dart';
export 'src/bloc_api.dart';
export 'src/store/index.dart';
export 'src/view_model/index.dart';

class MyAppBloc {
  static bool _isInitialized = false;
  static Store<AppState> store;

  static Future<bool> initialize({@required BlocAPI api}) async {
    ///
    /// Return if already initialized
    ///
    if (_isInitialized) return _isInitialized;

    ///
    /// Construct Tables
    ///
    await api.databaseService.initialize(instanceCreators: Tables.instanceCreators);
    Tables.construct(api.databaseService);

    ///
    /// Create Store
    ///
    store = AppStore.instance(api);

    ///
    /// Return
    ///
    _isInitialized = true;
    return _isInitialized;
  }
}
