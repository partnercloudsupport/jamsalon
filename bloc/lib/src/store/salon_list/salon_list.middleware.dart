import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

import '../../model/index.dart';
import '../../bloc_api.dart';
import '../app/index.dart';
import '../salon_list/salon_list.actions.dart';

class SalonListMiddleware {
  final BlocAPI _api;

  SalonListMiddleware(this._api);

  Epic<AppState> get epics => combineEpics<AppState>([
        TypedEpic(_searchSalonsEpic),
        TypedEpic(_selectSalonEpic),
      ]);

  Stream<SearchSalonsSuccessAction> _searchSalonsEpic(
    Stream<SearchSalonsAction> action,
    EpicStore<AppState> store,
  ) {
    return Observable(action)
        .switchMap((action) => this._api.databaseService.findAround(
              Tables.salon,
              center: action.geoPoint,
              radiusInKm: action.radiusInKm,
              locationFieldNameInDB: 'geoPoint',
            ))
        .map((list) => SearchSalonsSuccessAction(list: list));
  }

  Stream<void> _selectSalonEpic(
    Stream<SelectSalonAction> action,
    EpicStore<AppState> store,
  ) {
    return Observable(action)
        .map((action) => this._api.databaseService.resolvePaths(
              Tables.salon.name,
              action.item.key,
            ))
        .doOnData((_) => print(Tables.service.resolvedPath));
  }
}
