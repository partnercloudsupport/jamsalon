import 'check_in.state.dart';
import 'check_in.actions.dart';

CheckInState checkInReducer(CheckInState state, dynamic action) {
  if (action is CheckInAction) {
    return state.copyWith(checkIn: action.checkIn);
  }
  return state;
}
