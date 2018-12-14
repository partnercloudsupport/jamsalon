import 'package:meta/meta.dart';
import 'package:jamsalon/shared/model/salon.model.dart';

class SalonState {
  final List<Salon> list;

  SalonState({@required this.list});

  SalonState.initialize() : list = List.unmodifiable(<Salon>[]);
}
