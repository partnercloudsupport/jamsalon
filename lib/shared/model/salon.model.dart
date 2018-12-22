import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import 'package:jamsalon/jam/service/firestore/index.dart';

class Salon extends FirestoreData {
  String id;
  String name;
  String location;
  GeoPoint geoPoint;
  Color color;
  String photoPath;
  bool isOpen;

  Salon({
    String key,
    this.id,
    @required this.name,
    this.location,
    this.geoPoint,
    this.color = const Color.fromRGBO(70, 150, 90, 1.0),
    this.photoPath,
    this.isOpen = false,
  }) : super(key: key);

  Salon.fromMap({String key, Map<String, dynamic> map})
      : this.name = map['name'],
        this.location = map['location'],
        this.geoPoint = map['geoPoint'],
        this.color = Color(int.tryParse(map['color'] ?? '0xFF666666')),
        this.photoPath = map['photoPath'] ?? 'assets/images/salon_1.jpg',
        this.isOpen = map['isOpen'],
        super(key: key);

  @override
  Map<String, dynamic> toMap() {
    return {
      'key': this.key,
      'name': this.name,
      'location': this.location,
      'geoPoint': this.geoPoint,
      'color': this.color.toString(),
      'photoPath': this.photoPath,
      'isOpen': this.isOpen,
    };
  }

  Salon copyWith(
      {key, id, name, location, geoPoint, color, photoPath, isOpen}) {
    return Salon(
      key: key ?? this.key,
      id: id ?? this.id,
      name: name ?? this.name,
      location: location ?? this.location,
      geoPoint: geoPoint ?? this.geoPoint,
      color: color ?? this.color,
      photoPath: photoPath ?? this.photoPath,
      isOpen: isOpen ?? this.isOpen,
    );
  }
}
