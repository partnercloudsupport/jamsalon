import 'package:jamsalon/feature/search_location/view/recent_list.controller.dart';
import 'package:jamsalon/feature/search_location/view/saved_list.controller.dart';
import '../view/current_location_button.controller.dart';
import 'search_location.state.dart';
import 'search_location.actions.dart';

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
    return CurrentLocationButtonController.reducer(state, action);
  } else {
    return state;
  }
}
