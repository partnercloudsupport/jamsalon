import 'package:rxdart/rxdart.dart';
import 'package:redux_epics/redux_epics.dart';

import '../../store/index.dart';
import 'check_in.actions.dart';

final checkInMiddleware = combineEpics<AppState>([
  TypedEpic(middleware),
]);

Stream<CheckInSuccessAction> middleware(
  Stream<CheckInAction> action,
  EpicStore<AppState> store,
) {
  return Observable(action)
      .map((action) => CheckInSuccessAction(checkIn: action.checkIn));
}
