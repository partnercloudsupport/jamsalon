import 'package:jam_dart_models/models.dart';
import 'package:redux/redux.dart';

import '../store/index.dart';

class SalonPageViewModel {
  final Color pageColor;

  SalonPageViewModel.fromStore(Store<AppState> store)
      : pageColor = store.state.salonState.selectedItem.color;
}
