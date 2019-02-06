import 'package:jam_dart_interfaces/interfaces.dart';
import 'package:rxdart/rxdart.dart';
import 'package:redux_epics/redux_epics.dart';

import '../../bloc_api.dart';
import '../../model/index.dart';
import '../../store/index.dart';
import 'check_in.actions.dart';

class CheckInMiddleware {
  final DatabaseInterface _db;

  CheckInMiddleware(BlocAPI api) : _db = api.databaseService;

  Epic<AppState> get epics => combineEpics<AppState>([
        TypedEpic(_initializeForm),
        TypedEpic(_fetchServiceScopeListEpic),
        TypedEpic(_fetchServiceGroupListEpic),
        TypedEpic(_fetchServiceListEpic),
        TypedEpic(_fetchServiceListSuccessEpic),
        TypedEpic(_checkInEpic),
      ]);

  Stream<FetchServiceListAction> _initializeForm(
    Stream<InitializeFormAction> action,
    EpicStore<AppState> store,
  ) {
    return Observable(action).map((list) => FetchServiceListAction());
  }

  Stream<FetchServiceScopeListSuccessAction> _fetchServiceScopeListEpic(
    Stream<FetchServiceScopeListAction> action,
    EpicStore<AppState> store,
  ) {
    return Observable(action)
        .doOnData((action) => print(Tables.serviceScope.resolvedPath))
        .switchMap((action) => _db.list(Tables.serviceScope))
        .map((list) => FetchServiceScopeListSuccessAction(list: list));
  }

  Stream<FetchServiceGroupListSuccessAction> _fetchServiceGroupListEpic(
    Stream<FetchServiceGroupListAction> action,
    EpicStore<AppState> store,
  ) {
    return Observable(action)
        .doOnData((action) => print(Tables.serviceGroup.resolvedPath))
        .switchMap((action) => _db.list(Tables.serviceGroup))
        .map((list) => FetchServiceGroupListSuccessAction(list: list));
  }

  Stream<FetchServiceListSuccessAction> _fetchServiceListEpic(
    Stream<FetchServiceListAction> action,
    EpicStore<AppState> store,
  ) {
    return Observable(action)
        .doOnData((action) => print(Tables.service.resolvedPath))
        .switchMap((action) => _db.list(Tables.service))
        .map((list) => FetchServiceListSuccessAction(list: list));
  }

  Stream<FilterServiceListAction> _fetchServiceListSuccessEpic(
    Stream<FetchServiceListSuccessAction> action,
    EpicStore<AppState> store,
  ) {
    return Observable(action).map((action) => FilterServiceListAction(
          filter: store.state.checkInState.serviceListFilter,
        ));
  }

  Stream<CheckInSuccessAction> _checkInEpic(
    Stream<CheckInAction> action,
    EpicStore<AppState> store,
  ) {
    return Observable(action)
        .switchMap((action) =>
            _db.add(Tables.checkIn, item: store.state.checkInState.formItem))
        .switchMap((key) => _db.get(Tables.checkIn, key: key))
        .map((item) => CheckInSuccessAction(item: item));
  }
}
