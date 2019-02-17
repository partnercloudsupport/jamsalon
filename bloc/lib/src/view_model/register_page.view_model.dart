import '_.imports.dart';

class RegisterPageViewModel {
  final void Function(String username, String password) register;

  RegisterPageViewModel.fromStore(Store<AppState> store)
      : register = ((username, password) =>
            store.dispatch(RegisterAction(Credential(username, password))));
}
