import 'package:jamsalon/feature/search/store/search.actions.dart';
import 'package:jamsalon/feature/search/store/search.state.dart';

SearchState searchReducer(SearchState state, action) {
  if (action is SearchAction) {
    return SearchState(keyword: action.keyword);
  }
  return state;
}
