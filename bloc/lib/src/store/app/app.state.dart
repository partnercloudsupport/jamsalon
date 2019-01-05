import 'package:meta/meta.dart';

import '../salon_list/index.dart';
import '../search_location/index.dart';
import '../check_in/index.dart';

@immutable
class AppState {
  final SalonListState salonState;
  final SearchLocationState searchLocationState;
  final CheckInState checkInState;

  const AppState({
    @required this.salonState,
    @required this.searchLocationState,
    @required this.checkInState,
  });

  AppState.initialize()
      : salonState = SalonListState.initialize(),
        searchLocationState = SearchLocationState.initialize(),
        checkInState = CheckInState.initialize();

  AppState copyWith({
    SalonListState salonState,
    SearchLocationState searchLocationState,
    CheckInState checkInState,
  }) {
    return AppState(
      salonState: salonState ?? this.salonState,
      searchLocationState: searchLocationState ?? this.searchLocationState,
      checkInState: checkInState ?? this.checkInState,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState &&
          salonState == other.salonState &&
          searchLocationState == other.searchLocationState &&
          checkInState == other.checkInState;

  @override
  int get hashCode =>
      salonState.hashCode ^
      searchLocationState.hashCode ^
      checkInState.hashCode;
}
