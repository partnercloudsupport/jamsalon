import '_.imports.dart';

class RecentListViewModel {
  final List<Location> list;
  final Function() fetchList;

  RecentListViewModel.fromStore(Store<AppState> store)
      : list = store.state.searchLocationState.recentList,
        fetchList = (() => store.dispatch(FetchRecentListAction()));
}
