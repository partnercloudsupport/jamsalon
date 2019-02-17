import 'package:jam_dart_utilities/list_utils.dart' as list_utils;

import '_.imports.dart';

class ServiceListViewModel {
  final List<Service> list;
  final List<Service> selectedList;
  final void Function(Service item, bool isSelected) setSelection;
  final bool Function(Service item) isSelected;

  ServiceListViewModel.fromStore(Store<AppState> store)
      : list = store.state.checkInState.filteredServiceList,
        selectedList = store.state.checkInState.formItem.serviceList,
        setSelection = ((item, isSelected) => isSelected
            ? store.dispatch(SelectServiceAction(item: item))
            : store.dispatch(DeselectServiceAction(item: item))),
        isSelected = ((item) => list_utils.containsData(
              store.state.checkInState.formItem.serviceList,
              item,
            ));
}
