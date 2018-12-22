import 'package:jamsalon/feature/salon/store/salon.state.dart';
import 'package:jamsalon/feature/salon/store/salon.actions.dart';

SalonState salonReducer(SalonState state, dynamic action) {
  if (action is SearchSalonsSuccessAction) {
    return SalonState(list: action.list);
  }
  return state;
}
