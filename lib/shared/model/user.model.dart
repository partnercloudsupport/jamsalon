import 'package:jamsalon/shared/model/salon.model.dart';

class User {
  String key;
  String uid;
  String name;
  String phone;
  String email;
  List<Salon> preferredSalonList;

  User({this.name});
}
