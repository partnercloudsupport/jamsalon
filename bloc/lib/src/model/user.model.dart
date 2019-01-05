import 'package:meta/meta.dart';
import 'package:jam_dart_models/models.dart';

@immutable
class User extends Data {
  final String uid;
  final String name;
  final String phone;
  final String email;

  const User({
    String key,
    this.uid,
    @required this.name,
    this.phone,
    this.email,
  }) : super(key: key);

  User.fromMap({String key, Map<String, dynamic> map})
      : this.uid = map['uid'],
        this.name = map['name'],
        this.phone = map['phone'],
        this.email = map['email'],
        super(key: key);

  @override
  Map<String, dynamic> toMap() {
    return {
      'uid': this.uid,
      'name': this.name,
      'phone': this.phone,
      'email': this.email,
    };
  }

  User copyWith({String key, String id, String name, String phone, String email}) {
    return User(
      key: key ?? this.key,
      uid: uid ?? this.uid,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      email: email ?? this.email,
    );
  }
}
