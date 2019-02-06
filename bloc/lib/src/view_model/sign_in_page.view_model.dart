import 'package:redux/redux.dart';

import '../model/index.dart';
import '../store/index.dart';

class SignInPageViewModel {
  final bool loading;
  final User user;
  final void Function(String username, String password) signIn;
  final void Function() signInWithGoogle;

  SignInPageViewModel.fromStore(Store<AppState> store)
      : loading = store.state.authState.loading,
        user = store.state.authState.user,
        signIn = ((username, password) =>
            store.dispatch(SignInAction(Credential(username, password)))),
        signInWithGoogle = (() => store.dispatch(SignInWithGoogleAction()));
}
