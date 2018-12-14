import 'package:redux/redux.dart';
import 'package:jamsalon/shared/store/app.state.dart';
import 'package:jamsalon/shared/store/app.reducer.dart';

Store<AppState> buildStore() {
  return Store(
    appReducer,
    initialState: AppState.initialize(),
  );
}
