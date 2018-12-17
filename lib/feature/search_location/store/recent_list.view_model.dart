import 'package:meta/meta.dart';
import 'package:redux/redux.dart';
import 'package:jamsalon/shared/store/app.store.dart';
import 'package:jamsalon/shared/model/model.dart';
import 'package:jamsalon/feature/search_location/store/search_location.actions.dart';

class RecentListViewModel {
  final List<Location> list;
  final bool isExpanded;
  Function() getList;
  Function() expandList;

  RecentListViewModel({
    @required this.list,
    @required this.isExpanded,
    @required this.getList,
    @required this.expandList,
  });

  RecentListViewModel.fromStore(Store<AppState> store)
      : list = store.state.searchLocationState.recentList.length <= 3 ||
                store.state.searchLocationState.isRecentListExpanded
            ? store.state.searchLocationState.recentList
            : store.state.searchLocationState.recentList.sublist(0, 3),
        isExpanded = store.state.searchLocationState.isRecentListExpanded,
        getList = (() => store.dispatch(GetRecentListAction())),
        expandList = (() => store.dispatch(ExpandRecentListAction()));
}
