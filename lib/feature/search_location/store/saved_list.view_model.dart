import 'package:meta/meta.dart';
import 'package:redux/redux.dart';
import 'package:jamsalon/shared/store/app.store.dart';
import 'package:jamsalon/shared/model/model.dart';
import 'package:jamsalon/feature/search_location/store/search_location.actions.dart';

class SavedListViewModel {
  final List<Location> list;
  final bool isExpanded;
  final Function() getList;
  final Function() expandList;

  SavedListViewModel({
    @required this.list,
    @required this.isExpanded,
    @required this.getList,
    @required this.expandList,
  });

  SavedListViewModel.fromStore(Store<AppState> store)
      : list = store.state.searchLocationState.savedList.length <= 3 ||
                store.state.searchLocationState.isSavedListExpanded
            ? store.state.searchLocationState.savedList
            : store.state.searchLocationState.savedList.sublist(0, 3),
        isExpanded = store.state.searchLocationState.isSavedListExpanded,
        getList = (() => store.dispatch(GetSavedListAction())),
        expandList = (() => store.dispatch(ExpandSavedListAction()));
}
