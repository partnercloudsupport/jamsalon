import 'package:meta/meta.dart';

import 'firestore_data.model.dart';

class Metadata extends FirestoreData {
  final String name;
  final String path;

  Metadata({String key, @required this.name, @required this.path})
      : super(key: key);

  Metadata.fromMap({String key, Map<String, dynamic> map})
      : this.name = map['name'],
        this.path = map['path'],
        super(key: key);

  @override
  Map<String, dynamic> toMap() => ({
        'name': this.name,
        'path': this.path,
      });
}
