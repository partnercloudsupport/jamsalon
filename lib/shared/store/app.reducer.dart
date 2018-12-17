import 'package:jamsalon/shared/store/app.state.dart';
import 'package:jamsalon/feature/salon/salon.dart';
import 'package:jamsalon/feature/search/search.dart';
import 'package:jamsalon/feature/search_location/search_location.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    salonState: salonReducer(state.salonState, action),
    searchState: searchReducer(state.searchState, action),
    searchLocationState:
        searchLocationReducer(state.searchLocationState, action),
  );
}
