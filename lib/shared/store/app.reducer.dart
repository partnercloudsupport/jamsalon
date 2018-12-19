import 'package:jamsalon/shared/store/app.state.dart';
import 'package:jamsalon/feature/salon/index.dart';
import 'package:jamsalon/feature/search/index.dart';
import 'package:jamsalon/feature/search_location/index.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    salonState: salonReducer(state.salonState, action),
    searchState: searchReducer(state.searchState, action),
    searchLocationState:
        searchLocationReducer(state.searchLocationState, action),
  );
}
