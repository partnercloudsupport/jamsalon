import 'package:meta/meta.dart';
import 'package:redux/redux.dart';
import 'package:jamsalon/shared/store/index.dart';
import 'package:jamsalon/shared/model/index.dart';
import 'package:jamsalon/feature/search_location/store/search_location.actions.dart';

class RecentListViewModel {
  final List<Location> list;
  final Function() fetchList;

  const RecentListViewModel({
    @required this.list,
    @required this.fetchList,
  });

  RecentListViewModel.fromStore(Store<AppState> store)
      : list = store.state.searchLocationState.recentList,
        fetchList = (() => store.dispatch(FetchRecentListAction()));
}
