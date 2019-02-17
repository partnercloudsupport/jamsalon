import '_.imports.dart';

class SalonViewModel {
  final Salon item;

  SalonViewModel.fromStore(Store<AppState> store)
      : item = store.state.salonState.selectedItem;
}
