import '_.imports.dart';

class AuthViewModel {
  final User user;
  final bool isAuthenticated;
  final void Function() signOut;

  AuthViewModel.fromStore(Store<AppState> store)
      : user = store.state.authState.user,
        isAuthenticated = store.state.authState.isAuthenticated,
        signOut = (() => store.dispatch(SignOutAction()));
}
