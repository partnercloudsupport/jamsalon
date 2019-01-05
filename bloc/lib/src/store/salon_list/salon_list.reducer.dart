import 'salon_list.state.dart';
import 'salon_list.actions.dart';

SalonListState salonListReducer(SalonListState state, dynamic action) {
  if (action is SearchSalonsSuccessAction) {
    return state.copyWith(list: action.list);
  }
  return state;
}
