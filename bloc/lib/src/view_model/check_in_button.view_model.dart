import 'package:redux/redux.dart';

import '../store/index.dart';

class CheckInButtonViewModel {
  final Function() checkIn;

  CheckInButtonViewModel.fromStore(Store<AppState> store)
      : checkIn = (() => store.dispatch(CheckInAction()));
}
