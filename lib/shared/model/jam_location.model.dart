import 'package:meta/meta.dart';

class JamLocation {
  String key;
  String name;
  String address;

  JamLocation({
    this.key,
    @required this.name,
    this.address,
  });

  JamLocation copyWith({key, name}) {
    return JamLocation(
      key: key ?? this.key,
      name: name ?? this.name,
      address: address ?? this.address,
    );
  }
}
