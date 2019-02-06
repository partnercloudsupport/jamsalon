import 'package:jam_dart_models/models.dart';
import 'package:meta/meta.dart';

import 'service_scope.model.dart';

@immutable
class ServiceGroup extends Data {
  final String name;
  final String scopeKey;
  final ServiceScope scope;

  const ServiceGroup({
    String key,
    this.name,
    this.scopeKey,
    this.scope,
  }) : super(key: key);

  ServiceGroup.fromMap({String key, Map<String, dynamic> map})
      : this.name = map['name'],
        this.scopeKey = map['scopeKey'],
        this.scope =
            map['scopeKey'] == null ? null : ServiceScope(key: map['scopeKey']),
        super(key: key);

  @override
  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'scopeKey': this.scope?.key,
    };
  }

  ServiceGroup copyWith({key, name, scopeKey, scope}) {
    return ServiceGroup(
      key: key ?? this.key,
      name: name ?? this.name,
      scopeKey: scopeKey ?? this.scopeKey,
      scope: scope ?? this.scope,
    );
  }
}
