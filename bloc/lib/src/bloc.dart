import 'dart:async';

import 'package:redux/redux.dart';

import 'meta/_.index.dart';
import 'store/_app_store.index.dart';
import 'store/auth/auth.actions.dart';
import 'bloc_api.dart';

class Bloc {
  static bool _isInitialized = false;
  static Store<AppState> store;

  static Future<bool> initialize(BlocAPI api) async {
    ///
    /// Return if already initialized
    ///
    if (Bloc._isInitialized) return Bloc._isInitialized;

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
    Bloc.store = AppStore.instance(api);
    print('[Bloc] Store Initialized');
    Bloc.store.dispatch(InitializeAuthAction());
    await store.onChange.map((state) => state.authState.isInitialized).first;

    ///
    /// Return
    ///
    Bloc._isInitialized = true;
    return Bloc._isInitialized;
  }
}
