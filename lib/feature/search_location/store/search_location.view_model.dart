import 'package:meta/meta.dart';
import 'package:redux/redux.dart';
import 'package:jamsalon/shared/store/app.store.dart';
import 'package:jamsalon/shared/model/model.dart';
import 'package:jamsalon/feature/search_location/store/search_location.actions.dart';

class SearchLocationViewModel {
  final List<Location> savedList;
  final List<Location> recentList;
  final List<Location> predictionList;
  final bool isRecentListExpanded;
  final bool isSavedListExpanded;

  Function() getSavedAddressListAction;
  Function() getRecentSearchListAction;
  Function() expandSavedAddressListAction;
  Function() expandRecentSearchListAction;
  Function(String keyword) getPredictionListAction;

  SearchLocationViewModel({
    @required this.savedList,
    @required this.recentList,
    @required this.predictionList,
    @required this.isRecentListExpanded,
    @required this.isSavedListExpanded,
    @required this.getSavedAddressListAction,
    @required this.getRecentSearchListAction,
    @required this.expandSavedAddressListAction,
    @required this.expandRecentSearchListAction,
    @required this.getPredictionListAction,
  });

  SearchLocationViewModel.fromStore(Store<AppState> store)
      : savedList = store.state.searchLocationState.savedList.length <= 3 ||
                store.state.searchLocationState.isSavedListExpanded
            ? store.state.searchLocationState.savedList
            : store.state.searchLocationState.savedList.sublist(0, 3),
        recentList = store.state.searchLocationState.recentList.length <= 3 ||
                store.state.searchLocationState.isRecentListExpanded
            ? store.state.searchLocationState.recentList
            : store.state.searchLocationState.recentList.sublist(0, 3),
        predictionList = store.state.searchLocationState.predictionList,
        isRecentListExpanded =
            store.state.searchLocationState.isRecentListExpanded,
        isSavedListExpanded =
            store.state.searchLocationState.isSavedListExpanded,
        getSavedAddressListAction =
            (() => store.dispatch(GetSavedListAction())),
        getRecentSearchListAction =
            (() => store.dispatch(GetRecentListAction())),
        expandSavedAddressListAction =
            (() => store.dispatch(ExpandSavedListAction())),
        expandRecentSearchListAction =
            (() => store.dispatch(ExpandRecentListAction())),
        getPredictionListAction = ((String keyword) =>
            store.dispatch(GetPredictionListAction(keyword)));
}
