import '_.imports.dart';

class CheckInButtonViewModel {
  final Function() checkIn;

  CheckInButtonViewModel.fromStore(Store<AppState> store)
      : checkIn = (() => store.dispatch(CheckInAction()));
}
