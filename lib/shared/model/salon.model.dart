import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Salon {
  String key;
  String id;
  String name;
  String location;
  Color color;
  String photoPath;
  bool isOpen;

  Salon(
      {this.key,
      this.id,
      @required this.name,
      this.location,
      this.color = const Color.fromRGBO(70, 150, 90, 1.0),
      this.photoPath,
      this.isOpen = false});

  Salon copyWith({key, id, name, location, isOpen}) {
    return Salon(
      key: key ?? this.key,
      id: id ?? this.id,
      name: name ?? this.name,
      location: location ?? this.location,
      color: color ?? this.color,
      photoPath: photoPath ?? this.photoPath,
      isOpen: isOpen ?? this.isOpen,
    );
  }
}
