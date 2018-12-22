import 'package:rxdart/rxdart.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'metadata.model.dart';
import 'table.service.dart';

class JamDatabaseService {
  static Observable<List<Metadata>> initialize() {
    Firestore.instance.settings(timestampsInSnapshotsEnabled: true);

    var metaTable = Table<Metadata>(
      path: '/Metadata',
      instanceCreator: ({key, map}) => Metadata.fromMap(key: key, map: map),
    );

    return Observable(metaTable.list);
  }
}
