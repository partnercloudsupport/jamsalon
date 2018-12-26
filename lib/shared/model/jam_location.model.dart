import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

import 'package:jamsalon/jam/service/firestore/firestore_data.model.dart';

class JamLocation extends FirestoreData {
  String key;
  String name;
  String address;
  GeoPoint geoPoint;

  JamLocation({
    this.key,
    @required this.name,
    this.address,
    this.geoPoint,
  });

  JamLocation.fromMap({String key, Map<String, dynamic> map})
      : this.name = map['name'],
        this.address = map['address'],
        this.geoPoint = map['geoPoint'],
        super(key: key);

  @override
  Map<String, dynamic> toMap() {
    return {
      'key': this.key,
      'name': this.name,
      'address': this.address,
      'geoPoint': this.geoPoint,
    };
  }

  JamLocation copyWith({key, name}) {
    return JamLocation(
      key: key ?? this.key,
      name: name ?? this.name,
      address: address ?? this.address,
      geoPoint: geoPoint ?? this.geoPoint,
    );
  }
}
