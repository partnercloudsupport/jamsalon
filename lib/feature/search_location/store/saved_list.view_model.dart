import 'package:meta/meta.dart';
import 'package:redux/redux.dart';
import 'package:jamsalon/shared/store/app.store.dart';
import 'package:jamsalon/shared/model/model.dart';
import 'package:jamsalon/feature/search_location/store/search_location.actions.dart';

class SavedListViewModel {
  final List<Location> list;
  final Function() fetchList;

  const SavedListViewModel({
    @required this.list,
    @required this.fetchList,
  });

  SavedListViewModel.fromStore(Store<AppState> store)
      : list = store.state.searchLocationState.savedList,
        fetchList = (() => store.dispatch(FetchSavedListAction()));
}
