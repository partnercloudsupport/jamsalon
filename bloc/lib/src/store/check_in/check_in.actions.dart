import 'package:meta/meta.dart';

import '../../model/index.dart';

class CheckInAction {
  final CheckIn checkIn;

  const CheckInAction({@required this.checkIn});
}

class CheckInSuccessAction {
  final CheckIn checkIn;

  const CheckInSuccessAction({@required this.checkIn});
}
