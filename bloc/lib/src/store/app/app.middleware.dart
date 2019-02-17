import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

import '../../bloc_api.dart';
import '../_feature_store.index.dart';
import 'app.state.dart';

List<Middleware<AppState>> appMiddleware(BlocAPI api) {
  return <Middleware<AppState>>[
    EpicMiddleware(AuthMiddleware(api).epics),
    EpicMiddleware(SalonListMiddleware(api).epics),
    EpicMiddleware(SearchLocationMiddleware(api).epics),
    EpicMiddleware(CheckInMiddleware(api).epics),
  ];
}
