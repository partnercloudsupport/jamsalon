import 'package:redux/redux.dart';
import '../model/index.dart';
import '../store/app/index.dart';

class SalonListViewModel {
  final List<Salon> list;

  SalonListViewModel.fromStore(Store<AppState> store)
      : list = store.state.salonState.list;
}
