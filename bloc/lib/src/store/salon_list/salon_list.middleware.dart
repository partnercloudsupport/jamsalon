import 'package:bloc/src/store/_for_epic.index.dart';

class SalonListMiddleware {
  final DatabaseInterface _db;

  SalonListMiddleware(BlocAPI api) : _db = api.databaseService;

  Epic<AppState> get epics => combineEpics<AppState>([
        TypedEpic(_searchSalonsEpic),
        TypedEpic(_selectSalonEpic),
      ]);

  Stream<SearchSalonsSuccessAction> _searchSalonsEpic(
    Stream<SearchSalonsAction> action,
    EpicStore<AppState> store,
  ) {
    return Observable(action)
        .switchMap((action) => _db.findAround(
              Tables.salon,
              center: action.geoPoint,
              radiusInKm: action.radiusInKm,
              locationFieldNameInDB: 'geoPoint',
            ))
        .map((list) => SearchSalonsSuccessAction(list: list));
  }

  Stream<SelectSalonSuccessAction> _selectSalonEpic(
    Stream<SelectSalonAction> action,
    EpicStore<AppState> store,
  ) {
    return Observable(action)
        .switchMap((action) => _db.get(Tables.salon, key: action.item.key))
        .doOnData((item) {
          print(item.key);
        })
        .map((item) {
          _db.resolvePaths(Tables.salon.name, item.key);
          return item;
        })
        .map((item) => SelectSalonSuccessAction(item: item))
        .doOnData((item) {
          print(Tables.service.resolvedPath);
        });
  }
}
