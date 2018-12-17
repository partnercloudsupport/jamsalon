import 'package:meta/meta.dart';

class Location {
  String key;
  String name;
  String address;

  Location({this.key, @required this.name, this.address});

  Location copyWith({key, name}) {
    return Location(
      key: key ?? this.key,
      name: name ?? this.name,
      address: address ?? this.address,
    );
  }
}
