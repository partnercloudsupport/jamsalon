import '../auth/index.dart';
import '../check_in/index.dart';
import '../salon_list/index.dart';
import '../search_location/index.dart';
import 'app.state.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    authState: authReducer(state.authState, action),
    salonState: salonListReducer(state.salonState, action),
    searchLocationState:
        searchLocationReducer(state.searchLocationState, action),
    checkInState: checkInReducer(state.checkInState, action),
  );
}
