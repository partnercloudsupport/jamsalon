import 'package:redux/redux.dart';

import '../model/index.dart';
import '../store/index.dart';

class SelectedServiceListViewModel {
  final List<Service> selectedServiceList;

  SelectedServiceListViewModel.fromStore(Store<AppState> store)
      : selectedServiceList = store.state.checkInState.formItem.serviceList;
}
