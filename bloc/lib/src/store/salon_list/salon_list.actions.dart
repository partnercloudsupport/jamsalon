import 'package:jam_dart_models/models.dart';
import 'package:meta/meta.dart';

import '../../model/_.index.dart';

class SearchSalonsAction {
  final GeoPoint geoPoint;
  final double radiusInKm;

  const SearchSalonsAction(this.geoPoint, [this.radiusInKm = 5.0]);
}

class SearchSalonsSuccessAction {
  final List<Salon> list;

  const SearchSalonsSuccessAction({@required this.list});
}

class SelectSalonAction {
  final Salon item;

  const SelectSalonAction({@required this.item});
}

class SelectSalonSuccessAction {
  final Salon item;

  const SelectSalonSuccessAction({@required this.item});
}
