import 'package:redux/redux.dart';

import '../model/index.dart';
import '../store/index.dart';

class SalonViewModel {
  final Salon item;

  SalonViewModel.fromStore(Store<AppState> store)
      : item = store.state.salonState.selectedItem;
}
