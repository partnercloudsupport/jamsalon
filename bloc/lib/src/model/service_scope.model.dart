import 'package:jam_dart_models/models.dart';
import 'package:meta/meta.dart';

@immutable
class ServiceScope extends Data {
  final String name;
  final String icon;

  const ServiceScope({
    String key,
    this.name,
    this.icon,
  }) : super(key: key);

  ServiceScope.fromMap({String key, Map<String, dynamic> map})
      : this.name = map['name'],
        this.icon = map['icon'],
        super(key: key);

  @override
  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'icon': this.icon,
    };
  }

  ServiceScope copyWith({key, name, icon}) {
    return ServiceScope(
      key: key ?? this.key,
      name: name ?? this.name,
      icon: icon ?? this.icon,
    );
  }
}
