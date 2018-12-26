import 'package:jamsalon/feature/salon/store/salon.state.dart';
import 'package:jamsalon/feature/salon/store/salon.actions.dart';
import '../salon_list/salon_list.controller.dart';

SalonState salonReducer(SalonState state, dynamic action) {
  if (action is SearchSalonsSuccessAction) {
    return SalonListController.reducer(state, action);
  }
  return state;
}
