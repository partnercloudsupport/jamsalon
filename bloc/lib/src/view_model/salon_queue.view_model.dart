import 'package:redux/redux.dart';

import '../store/index.dart';

class SalonQueueViewModel {
  final int queueLength;
  String get queueSizeText {
    return '${this.queueLength > 3 ? 'Long' : 'Short'}';
  }

  SalonQueueViewModel.fromStore(Store<AppState> store)
      : queueLength = store.state.salonState.selectedItem?.queueLength ?? 0;
}
