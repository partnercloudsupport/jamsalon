import '_.imports.dart';

class SalonListViewModel {
  final List<Salon> list;

  SalonListViewModel.fromStore(Store<AppState> store)
      : list = store.state.salonState.list;
}
