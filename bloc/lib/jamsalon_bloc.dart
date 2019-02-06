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
    if (MyAppBloc._isInitialized) return MyAppBloc._isInitialized;

    ///
    /// Initialize [api.databaseService]
    ///
    await api.databaseService
        .initialize(instanceCreators: Tables.instanceCreators);
    Tables.construct(api.databaseService);
    print(
        '[Bloc] DatabaseService Initialized - Count: ${api.databaseService.tables.length} | Tables: ${api.databaseService.tables.keys.join(', ')}');

    ///
    /// Initialize [api.authService]
    ///
    await api.authService.initialize();
    var u = await api.authService.user.first;
    print('[Bloc] AuthService Initialized - User: ${(u?.email) ?? ''}');

    ///
    /// Create Store
    ///
    MyAppBloc.store = AppStore.instance(api);
    print('[Bloc] Store Initialized');
    MyAppBloc.store.dispatch(InitializeAuthAction());
    await store.onChange.map((state) => state.authState.isInitialized).first;

    ///
    /// Return
    ///
    MyAppBloc._isInitialized = true;
    return MyAppBloc._isInitialized;
  }
}
