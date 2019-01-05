import 'package:jam_dart_models/models.dart';
import 'package:meta/meta.dart';

import 'salon.model.dart';
import 'user.model.dart';

@immutable
class CheckIn extends Data {
  final String token;
  final User user;
  final Salon salon;
  final DateTime createdTime;
  final DateTime startTime;
  final DateTime endTime;
  final bool isAppointment;
  final String status;
  final int queuePosition;

  const CheckIn({
    String key,
    this.token,
    this.user,
    this.salon,
    this.createdTime,
    this.startTime,
    this.endTime,
    this.isAppointment,
    this.status,
    this.queuePosition,
  }) : super(key: key);

  CheckIn.fromMap({String key, Map<String, dynamic> map})
      : this.token = map['token'],
        this.user = map['user'],
        this.salon = map['salon'],
        this.createdTime = map['createdTime'],
        this.startTime = map['startTime'],
        this.endTime = map['endTime'],
        this.isAppointment = map['isAppointment'],
        this.status = map['status'],
        this.queuePosition = map['queuePosition'],
        super(key: key);

  @override
  Map<String, dynamic> toMap() {
    return {
      'token': this.token,
      'user': this.user,
      'salon': this.salon,
      'createdTime': this.createdTime,
      'startTime': this.startTime,
      'endTime': this.endTime,
      'isAppointment': this.isAppointment,
      'status': this.status,
      'queuePosition': this.queuePosition,
    };
  }

  CheckIn copyWith({key, id, name, location, geoPoint, color, photoPath, isOpen}) {
    return CheckIn(
      key: key ?? this.key,
      token: token ?? this.token,
      user: user ?? this.user,
      salon: salon ?? this.salon,
      createdTime: createdTime ?? this.createdTime,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      isAppointment: isAppointment ?? this.isAppointment,
      status: status ?? this.status,
      queuePosition: queuePosition ?? this.queuePosition,
    );
  }
}
