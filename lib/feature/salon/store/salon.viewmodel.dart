import 'package:jamsalon/feature/salon/store/salon.actions.dart';
import 'package:jamsalon/shared/model/salon.model.dart';
import 'package:jamsalon/shared/store/app.state.dart';
import 'package:redux/redux.dart';

class SalonViewModel {
  final List<Salon> list;
  final Function() search;

  SalonViewModel({
    this.list,
    this.search,
  });

  SalonViewModel.fromStore(Store<AppState> store)
      : list = store.state.salonState.list,
        search = (() => store.dispatch(SearchSalonsAction()));
}
