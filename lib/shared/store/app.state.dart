import 'package:meta/meta.dart';
import 'package:jamsalon/feature/salon/store/salon.state.dart';

@immutable
class AppState {
  AppState({
    @required this.salonState,
  });

  final SalonState salonState;

  AppState.initialize() : salonState = SalonState.initialize();

  AppState copyWith({
    SalonState salonState,
  }) {
    return AppState(
      salonState: salonState ?? this.salonState,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState && salonState == other.salonState;

  @override
  int get hashCode => salonState.hashCode;
}
