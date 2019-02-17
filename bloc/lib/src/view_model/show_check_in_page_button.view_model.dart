import '_.imports.dart';

class ShowCheckInPageButtonViewModel {
  final Function() initializeForm;

  ShowCheckInPageButtonViewModel.fromStore(Store<AppState> store)
      : initializeForm = (() => store.dispatch(InitializeFormAction()));
}
