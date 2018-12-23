import 'dart:async';

import 'package:redux/redux.dart';

import 'package:jamsalon/shared/store/index.dart';
import 'package:jamsalon/shared/service/index.dart';
import 'package:jamsalon/feature/salon/store/salon.actions.dart';

class SalonMiddleware extends MiddlewareClass<AppState> {
  SalonMiddleware();

  @override
  Future<void> call(
      Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);

    if (action is SearchSalonsAction) {
      print('salon middleware -- search action');
      DatabaseService.tables.salon
          .findAround(action.geoPoint, action.radiusInKm)
          .doOnData((list) => list.forEach((item) => print(item.name)))
          .listen(
              (list) => store.dispatch(SearchSalonsSuccessAction(list: list)));
    }
  }
}
