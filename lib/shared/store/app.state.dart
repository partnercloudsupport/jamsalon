import 'package:meta/meta.dart';

import 'package:jamsalon/feature/salon/index.dart';
import 'package:jamsalon/feature/search/index.dart';
import 'package:jamsalon/feature/search_location/index.dart';

@immutable
class AppState {
  final SalonState salonState;
  final SearchState searchState;
  final SearchLocationState searchLocationState;

  const AppState({
    @required this.salonState,
    @required this.searchState,
    @required this.searchLocationState,
  });

  AppState.initialize()
      : salonState = SalonState.initialize(),
        searchState = SearchState.initialize(),
        searchLocationState = SearchLocationState.initialize();

  AppState copyWith({
    SalonState salonState,
    SearchState searchState,
    SearchLocationState searchLocationState,
  }) {
    return AppState(
      salonState: salonState ?? this.salonState,
      searchState: searchState ?? this.searchState,
      searchLocationState: searchLocationState ?? this.searchLocationState,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState &&
          salonState == other.salonState &&
          searchState == other.searchState &&
          searchLocationState == other.searchLocationState;

  @override
  int get hashCode =>
      salonState.hashCode ^ searchState.hashCode ^ searchLocationState.hashCode;
}
