import 'package:meta/meta.dart';
import 'package:jam_dart_models/models.dart';
import '../../model/index.dart';

@immutable
class SalonListState {
  final List<Salon> list;
  final Salon selectedItem;
  final Location selectedLocation;

  const SalonListState({
    @required this.list,
    @required this.selectedItem,
    @required this.selectedLocation,
  });

  SalonListState.initialize()
      : list = const [],
        selectedItem = null,
        selectedLocation = null;

  SalonListState copyWith({
    List<Salon> list,
    Salon selectedItem,
    Location selectedLocation,
  }) {
    return SalonListState(
      list: list ?? this.list,
      selectedItem: selectedItem ?? this.selectedItem,
      selectedLocation: selectedLocation ?? this.selectedLocation,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SalonListState &&
          this.list == other.list &&
          this.selectedItem == other.selectedItem &&
          this.selectedLocation == other.selectedLocation;

  @override
  int get hashCode =>
      this.list.hashCode ^ this.selectedItem.hashCode ^ this.selectedLocation.hashCode;
}
