import 'package:redux_epics/redux_epics.dart';

import 'package:jamsalon/shared/store/index.dart';
import '../salon_list/salon_list.controller.dart';

final salonMiddleware = combineEpics<AppState>([
  TypedEpic(SalonListController.middleware),
]);
