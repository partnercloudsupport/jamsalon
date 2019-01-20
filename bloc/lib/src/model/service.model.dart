import 'package:jam_dart_models/models.dart';
import 'package:meta/meta.dart';

import 'body_feature.model.dart';
import 'service_group.model.dart';

@immutable
class Service extends Data {
  final String name;
  final String description;
  final String groupKey;
  final ServiceGroup group;
  final String gender;
  final double price;
  final int duration;
  final BodyFeature suitedBodyFeature;

  const Service({
    String key,
    this.name,
    this.description,
    this.groupKey,
    this.group,
    this.gender,
    this.price,
    this.duration,
    this.suitedBodyFeature,
  }) : super(key: key);

  Service.fromMap({String key, Map<String, dynamic> map})
      : this.name = map['name'],
        this.description = map['description'],
        this.groupKey = map['groupKey'],
        this.group = map['group'],
        this.gender = map['gender'],
        this.price = map['price'],
        this.duration = map['duration'],
        this.suitedBodyFeature = map['suitedBodyFeature'],
        super(key: key);

  @override
  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'description': this.description,
      'groupKey': this.groupKey,
      'gender': this.gender,
      'price': this.price,
      'duration': this.duration,
      'suitedBodyFeature': this.suitedBodyFeature,
    };
  }

  Service copyWith({
    String key,
    String name,
    String description,
    String groupKey,
    ServiceGroup group,
    String gender,
    double price,
    int duration,
    BodyFeature suitedBodyFeature,
  }) {
    return Service(
      key: key ?? this.key,
      name: name ?? this.name,
      description: description ?? this.description,
      groupKey: groupKey ?? this.groupKey,
      group: group ?? this.group,
      gender: gender ?? this.gender,
      price: price ?? this.price,
      duration: duration ?? this.duration,
      suitedBodyFeature: suitedBodyFeature ?? this.suitedBodyFeature,
    );
  }
}
