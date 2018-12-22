import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firestore_helpers/firestore_helpers.dart';

import 'firestore_data_instance_creator.utility.dart';
import 'firestore_data.model.dart';

class Table<Model extends FirestoreData> {
  final Firestore _db = Firestore.instance;
  final String name;
  final FirestoreDataInstanceCreator<Model> _instanceCreator;
  String _path;
  String get path {
    return this._path;
  }

  CollectionReference _collection;

  Table({
    this.name = '',
    @required String path,
    @required FirestoreDataInstanceCreator<Model> instanceCreator,
  }) : this._instanceCreator = instanceCreator {
    this._path = path;
    this._setCollection();
  }

  bool get _isPathValid {
    return this._path != null && this._path.indexOf('{') < 0;
  }

  void _setCollection() {
    this._collection =
        this._isPathValid ? this._db.collection(this._path) : null;
  }

  void resolvePath(
      {@required String collectionName, @required String documentKey}) {
    if (documentKey == null && documentKey.isEmpty) return;
    this._path = this._path.replaceAll('{' + collectionName + '}', documentKey);
    this._setCollection();
  }

  Model _docToModel(DocumentSnapshot document) {
    return document.exists
        ? this._instanceCreator(key: document.documentID, map: document.data)
        : null;
  }

  Observable<List<Model>> get list {
    return Observable(this._collection.snapshots())
        .map((snapshot) => snapshot.documents.map(this._docToModel).toList());
  }

  Observable<Model> get(String key) {
    return key == null
        ? Observable.just(null)
        : Observable(this._collection.document(key).snapshots())
            .map(this._docToModel);
  }

  Observable<List<Model>> findAround(GeoPoint center, double radius) {
    return Observable(getDataInArea<Model>(
      source: this._collection,
      area: Area(center, radius),
      locationFieldNameInDB: 'geoPoint',
      mapper: this._docToModel,
    ));
  }
}
