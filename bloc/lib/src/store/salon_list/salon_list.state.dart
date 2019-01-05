import 'package:meta/meta.dart';
import 'package:jam_dart_models/models.dart';
import '../../model/index.dart';

@immutable
class SalonListState {
  final Location selectedLocation;
  final List<Salon> list;

  const SalonListState({
    @required this.selectedLocation,
    @required this.list,
  });

  SalonListState.initialize()
      : selectedLocation = null,
        list = const [];

  SalonListState copyWith({
    Location selectedLocation,
    List<Salon> list,
  }) {
    return SalonListState(
      selectedLocation: selectedLocation ?? this.selectedLocation,
      list: list ?? this.list,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SalonListState &&
          this.selectedLocation == other.selectedLocation &&
          this.list == other.list;

  @override
  int get hashCode => this.selectedLocation.hashCode ^ this.list.hashCode;
}
