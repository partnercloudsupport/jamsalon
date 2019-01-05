import 'package:jam_dart_models/models.dart';
import 'package:redux/redux.dart';

import '../store/index.dart';

class RecentListViewModel {
  final List<Location> list;
  final Function() fetchList;

  RecentListViewModel.fromStore(Store<AppState> store)
      : list = store.state.searchLocationState.recentList,
        fetchList = (() => store.dispatch(FetchRecentListAction()));
}
