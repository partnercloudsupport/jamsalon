import '../_feature_store.index.dart';
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
