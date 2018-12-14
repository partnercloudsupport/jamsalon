import 'package:jamsalon/feature/salon/store/salon.reducer.dart';
import 'package:jamsalon/shared/store/app.state.dart';

AppState appReducer(AppState state, dynamic action) {
  return new AppState(
    salonState: salonReducer(state.salonState, action),
  );
}
