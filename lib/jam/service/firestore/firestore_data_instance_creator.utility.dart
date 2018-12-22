import 'firestore_data.model.dart';

typedef T FirestoreDataInstanceCreator<T extends FirestoreData>({
  String key,
  Map<String, dynamic> map,
});
