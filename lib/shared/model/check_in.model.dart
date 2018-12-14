import 'package:jamsalon/shared/model/salon.model.dart';
import 'package:jamsalon/shared/model/user.model.dart';

class CheckIn {
  String key;
  String token;
  User user;
  Salon salon;
  DateTime createdTime;
  DateTime startTime;
  DateTime endTime;
  bool isAppointment;
  String status;
  int queuePosition;
  CheckIn({this.salon, this.startTime});
}
