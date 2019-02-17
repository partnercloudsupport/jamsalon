import 'package:jamsalon/src/feature/_.imports.dart';

import 'select_service_step.view.dart';

class CheckIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('[CheckIn] -BUILDING- CheckInPage');
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: SelectServiceStep(),
    );
  }
}
