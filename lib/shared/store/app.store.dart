import 'package:redux/redux.dart';
import 'package:jamsalon/shared/store/app.state.dart';
import 'package:jamsalon/shared/store/app.reducer.dart';

export 'package:jamsalon/shared/store/app.state.dart';

class AppStore {
  static Store<AppState> initialize() {
    return Store(
      appReducer,
      initialState: AppState.initialize(),
    );
  }
}
