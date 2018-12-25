import '../current_location_button/current_location_button.controller.dart';
import '../recent_list/recent_list.controller.dart';
import '../saved_list/saved_list.controller.dart';
import 'search_location.actions.dart';
import 'search_location.state.dart';

SearchLocationState searchLocationReducer(
  SearchLocationState state,
  dynamic action,
) {
  if (action is FetchSavedListSuccessAction) {
    return SavedListController.reducer(state, action);
  } else if (action is FetchRecentListSuccessAction) {
    return RecentListController.reducer(state, action);
  } else if (action is FetchPredictionListAction) {
    return state.copyWith(searchKeyword: action.keyword);
  } else if (action is FetchPredictionListSuccessAction) {
    return state.copyWith(predictionList: action.list);
  } else if (action is FetchCurrentLocationSuccessAction) {
    print(action.geoPoint);
    return CurrentLocationButtonController.reducer(state, action);
  } else {
    return state;
  }
}
