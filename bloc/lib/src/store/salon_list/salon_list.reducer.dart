import 'salon_list.actions.dart';
import 'salon_list.state.dart';

SalonListState salonListReducer(SalonListState state, dynamic action) {
  if (action is SearchSalonsSuccessAction) {
    return state.copyWith(list: action.list);
  } else if (action is SelectSalonSuccessAction) {
    return state.copyWith(selectedItem: action.item);
  } else {
    return state;
  }
}
