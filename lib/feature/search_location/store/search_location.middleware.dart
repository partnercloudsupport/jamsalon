import 'package:redux_epics/redux_epics.dart';

import 'package:jamsalon/shared/store/index.dart';
import '../current_location_button/current_location_button.controller.dart';
import '../recent_list/recent_list.controller.dart';
import '../saved_list/saved_list.controller.dart';
import '../search_bar/search_bar.controller.dart';
import '../search_location_container/search_location_container.controller.dart';

final searchLocationMiddleware = combineEpics<AppState>([
  TypedEpic(SavedListController.middleware),
  TypedEpic(RecentListController.middleware),
  TypedEpic(SearchBarController.middleware),
  TypedEpic(CurrentLocationButtonController.middleware),
  TypedEpic(SearchLocationContainerController.middleware),
]);
