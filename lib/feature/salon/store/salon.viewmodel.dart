import 'package:redux/redux.dart';
import 'package:jamsalon/shared/store/app.state.dart';
import 'package:jamsalon/feature/salon/store/salon.actions.dart';
import 'package:jamsalon/shared/model/salon.model.dart';

class SalonViewModel {
  final List<Salon> list;
  final Function() searchAction;

  const SalonViewModel({
    this.list,
    this.searchAction,
  });

  SalonViewModel.fromStore(Store<AppState> store)
      : list = store.state.salonState.list,
        searchAction = (() => null);
  // searchAction = (() => store.dispatch(SearchSalonsAction()));
}
