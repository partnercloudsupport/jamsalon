import '_.imports.dart';

class ServiceListFilterViewModel {
  final Service filter;
  final void Function(Service filter) filterServiceList;
  final void Function(String scopeKey) filterByScope;

  ServiceListFilterViewModel.fromStore(Store<AppState> store)
      : filter = store.state.checkInState.serviceListFilter,
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
    return filter.copyWith(
      group: filter.group.copyWith(
        scope: filter.group.scope.copyWith(key: scopeKey),
        scopeKey: scopeKey,
      ),
    );
  }
}
