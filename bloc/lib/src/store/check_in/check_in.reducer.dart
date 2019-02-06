import 'package:jam_dart_utilities/list_utils.dart' as list_utils;

import 'check_in.state.dart';
import 'check_in.actions.dart';
import 'check_in.service.dart';

CheckInState checkInReducer(CheckInState state, dynamic action) {
  if (action is InitializeFormAction) {
    return state.copyWith(
      formItem: CheckInService.refreshFormItem(state.formItem),
    );
  } else if (action is FetchServiceScopeListSuccessAction) {
    return state.copyWith(serviceScopeList: action.list);
  } else if (action is FetchServiceGroupListSuccessAction) {
    return state.copyWith(serviceGroupList: action.list);
  } else if (action is FetchServiceListSuccessAction) {
    return state.copyWith(
      serviceList: CheckInService.fillServiceList(
        list: action.list,
        groupList: state.serviceGroupList,
        scopeList: state.serviceScopeList,
      ),
    );
  } else if (action is FilterServiceListAction) {
    return state.copyWith(
      serviceListFilter: action.filter,
      filteredServiceList: CheckInService.filterServiceList(
        state.serviceList,
        action.filter,
      ),
    );
  } else if (action is SelectServiceAction) {
    // final newFormItem = CheckInService.refreshFormItem(state.formItem);
    return state.copyWith(
      formItem: state.formItem.copyWith(
        serviceList: list_utils.addData(
          state.formItem.serviceList,
          action.item,
        ),
      ),
    );
  } else if (action is DeselectServiceAction) {
    // final newFormItem = CheckInService.refreshFormItem(state.formItem);
    return state.copyWith(
      formItem: state.formItem.copyWith(
        serviceList: list_utils.remove(
          state.formItem.serviceList,
          action.item,
        ),
      ),
    );
  } else if (action is CheckInSuccessAction) {
    return state.copyWith(item: action.item);
  } else {
    return state;
  }
}
