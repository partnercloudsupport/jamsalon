import 'search_location.actions.dart';
import 'search_location.state.dart';

SearchLocationState searchLocationReducer(
  SearchLocationState state,
  dynamic action,
) {
  if (action is FetchSavedListSuccessAction) {
    return state.copyWith(savedList: action.list);
  } else if (action is FetchRecentListSuccessAction) {
    return state.copyWith(recentList: action.list);
  } else if (action is FetchPredictionListAction) {
    return state.copyWith(searchKeyword: action.keyword);
  } else if (action is FetchPredictionListSuccessAction) {
    return state.copyWith(predictionList: action.list);
  } else if (action is FetchCurrentLocationSuccessAction) {
    return state.copyWith(selectedLocation: action.location);
  } else {
    return state;
  }
}
