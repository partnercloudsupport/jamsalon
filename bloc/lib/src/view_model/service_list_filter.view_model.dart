import 'package:redux/redux.dart';

import '../model/index.dart';
import '../store/index.dart';

class ServiceListFilterViewModel {
  final Service filter;
  final Function() fetchServiceList;
  final Function(Service filter) filterServiceList;
  final Function(String scopeKey) filterByScope;

  ServiceListFilterViewModel.fromStore(Store<AppState> store)
      : filter = store.state.checkInState.serviceListFilter,
        fetchServiceList = (() => store.dispatch(FetchServiceListAction())),
        filterServiceList = ((filter) =>
            store.dispatch(FilterServiceListAction(filter: filter))),
        filterByScope = ((scopeKey) => store.dispatch(
              FilterServiceListAction(
                filter: _addScopeToFilter(
                  store.state.checkInState.serviceListFilter,
                  scopeKey,
                ),
              ),
            ));

  static Service _addScopeToFilter(Service filter, String scopeKey) {
    print('filterByScope');
    print(filter.group);
    return filter.copyWith(
        group: filter.group
            .copyWith(scope: filter.group.scope.copyWith(key: scopeKey)));
  }
}
