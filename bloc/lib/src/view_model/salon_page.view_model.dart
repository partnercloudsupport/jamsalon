import '_.imports.dart';

class SalonPageViewModel {
  final Color pageColor;

  SalonPageViewModel.fromStore(Store<AppState> store)
      : pageColor = store.state.salonState.selectedItem.color;
}
