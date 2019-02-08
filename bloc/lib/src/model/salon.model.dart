import 'package:meta/meta.dart';
import 'package:jam_dart_models/models.dart';

@immutable
class Salon extends Data {
  final String id;
  final String name;
  final String location;
  final GeoPoint geoPoint;
  final Color color;
  final String photoPath;
  final bool isOpen;
  final int queueLength;

  const Salon({
    String key,
    this.id,
    this.name,
    this.location,
    this.geoPoint,
    this.color = const Color.fromRGBO(70, 150, 90, 1.0),
    this.photoPath,
    this.isOpen = false,
    this.queueLength = 0,
  }) : super(key: key);

  Salon.fromMap({String key, Map<String, dynamic> map})
      : this.id = map['id'],
        this.name = map['name'],
        this.location = map['location'],
        this.geoPoint =
            GeoPoint(map['geoPoint']?.latitude, map['geoPoint']?.longitude),
        this.color = Color(int.tryParse(map['color'] ?? '0xFF666666')),
        this.photoPath = map['photoPath'] ?? 'assets/images/salon_1.jpg',
        this.isOpen = map['isOpen'] ?? false,
        this.queueLength = map['queueLength'] ?? 0,
        super(key: key);

  @override
  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'location': this.location,
      'geoPoint': this.geoPoint,
      'color': this.color.toString(),
      'photoPath': this.photoPath,
      'isOpen': this.isOpen,
      'queueLength': this.queueLength,
    };
  }

  Salon copyWith({
    key,
    id,
    name,
    location,
    geoPoint,
    color,
    photoPath,
    isOpen,
    queueLength,
  }) {
    return Salon(
      key: key ?? this.key,
      id: id ?? this.id,
      name: name ?? this.name,
      location: location ?? this.location,
      geoPoint: geoPoint ?? this.geoPoint,
      color: color ?? this.color,
      photoPath: photoPath ?? this.photoPath,
      isOpen: isOpen ?? this.isOpen,
      queueLength: queueLength ?? this.queueLength,
    );
  }
}
