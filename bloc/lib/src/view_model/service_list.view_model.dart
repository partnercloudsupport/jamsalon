import 'package:redux/redux.dart';

import '../model/index.dart';
import '../store/index.dart';

class ServiceListViewModel {
  final List<Service> list;
  final Function() fetchServiceList;

  ServiceListViewModel.fromStore(Store<AppState> store)
      : list = store.state.checkInState.filteredServiceList,
        fetchServiceList = (() => store.dispatch(FetchServiceListAction()));
}
