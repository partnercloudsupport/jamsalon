import 'package:redux/redux.dart';

import '../model/index.dart';
import '../store/index.dart';

class AuthViewModel {
  final User user;
  final bool isAuthenticated;
  final void Function() signOut;

  AuthViewModel.fromStore(Store<AppState> store)
      : user = store.state.authState.user,
        isAuthenticated = store.state.authState.isAuthenticated,
        signOut = (() => store.dispatch(SignOutAction()));
}
