import 'package:meta/meta.dart';
import 'package:jamsalon/shared/model/index.dart';

@immutable
class SalonState {
  final JamLocation selectedLocation;
  final List<Salon> list;

  const SalonState({
    @required this.selectedLocation,
    @required this.list,
  });

  SalonState.initialize()
      : selectedLocation = null,
        list = const [];

  SalonState copyWith({
    JamLocation selectedLocation,
    List<Salon> list,
  }) {
    return SalonState(
      selectedLocation: selectedLocation ?? this.selectedLocation,
      list: list ?? this.list,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SalonState &&
          this.selectedLocation == other.selectedLocation &&
          this.list == other.list;

  @override
  int get hashCode => this.selectedLocation.hashCode ^ this.list.hashCode;
}
