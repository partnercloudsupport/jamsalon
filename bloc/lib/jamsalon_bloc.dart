import 'package:meta/meta.dart';
import 'package:redux/redux.dart';

import 'src/jamsalon_api.dart';
import 'src/store/index.dart';

export 'src/config/ui.config.dart';
export 'src/model/index.dart';
export 'src/jamsalon_api.dart';
export 'src/store/index.dart';
export 'src/view_model/index.dart';

class JamsalonBloc {
  static bool _isInitialized = false;
  static Store<AppState> store;

  static void initialize({@required JamsalonApi api}) {
    ///
    /// Return if already initialized
    ///
    if (_isInitialized) return;

    ///
    /// Initialize
    ///
    store = AppStore.instance(api);
    _isInitialized = true;
    return;
  }
}
