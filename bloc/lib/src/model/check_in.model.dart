import 'package:jam_dart_models/models.dart';
import 'package:meta/meta.dart';

import 'salon.model.dart';

@immutable
class CheckIn extends Data {
  final String token;
  final String userKey;
  final User user;
  final String salonKey;
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
    this.userKey,
    this.user,
    this.salonKey,
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
        this.userKey = map['userKey'],
        this.user = map['user'],
        this.salonKey = map['salonKey'],
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
      'userKey': this.userKey,
      'salonKey': this.salonKey,
      'createdTime': this.createdTime,
      'startTime': this.startTime,
      'endTime': this.endTime,
      'isAppointment': this.isAppointment,
      'status': this.status,
      'queuePosition': this.queuePosition,
    };
  }

  CheckIn copyWith({
    key,
    token,
    userKey,
    user,
    salonKey,
    salon,
    createdTime,
    startTime,
    endTime,
    isAppointment,
    status,
    queuePosition,
  }) {
    return CheckIn(
      key: key ?? this.key,
      token: token ?? this.token,
      userKey: userKey ?? this.userKey,
      user: user ?? this.user,
      salonKey: salonKey ?? this.salonKey,
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
