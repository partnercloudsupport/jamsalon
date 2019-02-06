import 'package:redux/redux.dart';

import '../model/index.dart';
import '../store/index.dart';

class RegisterPageViewModel {
  final void Function(String username, String password) register;

  RegisterPageViewModel.fromStore(Store<AppState> store)
      : register = ((username, password) =>
            store.dispatch(RegisterAction(Credential(username, password))));
}
