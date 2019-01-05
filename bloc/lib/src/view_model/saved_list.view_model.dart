import 'package:jam_dart_models/models.dart';
import 'package:redux/redux.dart';

import '../store/index.dart';

class SavedListViewModel {
  final List<Location> list;
  final Function() fetchList;

  SavedListViewModel.fromStore(Store<AppState> store)
      : list = store.state.searchLocationState.savedList,
        fetchList = (() => store.dispatch(FetchSavedListAction()));
}

class SavedListController {}
