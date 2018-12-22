import 'package:meta/meta.dart';
import 'package:jamsalon/jam/service/firestore/index.dart';

class User extends FirestoreData {
  String key;
  String uid;
  String name;
  String phone;
  String email;

  User({@required this.name});

  User.fromMap({String key, Map<String, dynamic> map})
      : this.name = map['name'],
        super(key: key);

  @override
  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
    };
  }

  User copyWith({key, id, name}) {
    return User(
      name: name ?? this.name,
    );
  }
}
