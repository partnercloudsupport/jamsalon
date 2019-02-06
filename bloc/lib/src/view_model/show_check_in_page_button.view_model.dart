import 'package:redux/redux.dart';

import '../store/index.dart';

class ShowCheckInPageButtonViewModel {
  final Function() initializeForm;

  ShowCheckInPageButtonViewModel.fromStore(Store<AppState> store)
      : initializeForm = (() => store.dispatch(InitializeFormAction()));
}
