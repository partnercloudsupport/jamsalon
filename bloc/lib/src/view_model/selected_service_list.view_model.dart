import '_.imports.dart';

class SelectedServiceListViewModel {
  final List<Service> selectedServiceList;

  String get selectedServiceCountText {
    final int count = this.selectedServiceList.length;
    switch (count) {
      case 0:
        return 'You have not selected a service. Please select one.';
      case 1:
        return '$count service selected.';
      default:
        return '$count services selected.';
    }
  }

  SelectedServiceListViewModel.fromStore(Store<AppState> store)
      : selectedServiceList = store.state.checkInState.formItem.serviceList;
}
