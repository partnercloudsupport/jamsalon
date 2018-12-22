abstract class FirestoreData {
  final String key;

  ///
  /// Construct from table columns
  ///
  FirestoreData({this.key});

  ///
  /// Construct from Map
  ///
  FirestoreData.fromMap({String key, Map<String, dynamic> map})
      : this.key = key;

  ///
  /// Serialize JSON
  ///
  Map<String, dynamic> toMap();
}
