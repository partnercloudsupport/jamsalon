import 'package:meta/meta.dart';
import '../../model/index.dart';

@immutable
class CheckInState {
  final CheckIn checkIn;

  const CheckInState({
    @required this.checkIn,
  });

  CheckInState.initialize() : checkIn = null;

  CheckInState copyWith({
    CheckIn checkIn,
  }) {
    return CheckInState(
      checkIn: checkIn ?? this.checkIn,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CheckInState && this.checkIn == other.checkIn;

  @override
  int get hashCode => this.checkIn.hashCode;
}
