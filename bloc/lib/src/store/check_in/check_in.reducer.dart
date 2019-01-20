import 'check_in.state.dart';
import 'check_in.actions.dart';
import 'check_in.service.dart';

CheckInState checkInReducer(CheckInState state, dynamic action) {
  if (action is FetchServiceScopeListSuccessAction) {
    print('FetchServiceScopeListSuccessAction completes');
    return state.copyWith(
      serviceScopeList: action.list,
    );
  } else if (action is FetchServiceGroupListSuccessAction) {
    print('FetchServiceGroupListSuccessAction completes');
    return state.copyWith(
      serviceGroupList: action.list,
    );
  } else if (action is FetchServiceListSuccessAction) {
    print('FetchServiceListSuccessAction completes');
    return state.copyWith(
      serviceList: CheckInService.fillServiceList(
        list: action.list,
        groupList: state.serviceGroupList,
        scopeList: state.serviceScopeList,
      ),
    );
  } else if (action is CheckInAction) {
    return state.copyWith(
      item: action.item,
    );
  } else if (action is FilterServiceListAction) {
    print('FilterServiceListAction completes');
    return state.copyWith(
      serviceListFilter: action.filter,
      filteredServiceList: CheckInService.filterServiceList(
        state.serviceList,
        action.filter,
      ),
    );
  }
  return state;
}
