import 'package:meta/meta.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:jamsalon/shared/model/index.dart';

class SearchSalonsAction {
  final GeoPoint geoPoint;
  final double radiusInKm;

  const SearchSalonsAction(this.geoPoint, [this.radiusInKm = 5.0]);
}

class SearchSalonsSuccessAction {
  final List<Salon> list;

  const SearchSalonsSuccessAction({@required this.list});
}
