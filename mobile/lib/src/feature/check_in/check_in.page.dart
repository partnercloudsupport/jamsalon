import 'package:jamsalon/src/feature/_.imports.dart';

import 'check_in.view.dart';
import 'check_in_form_summary.view.dart';

class CheckInPage extends StatelessWidget {
  const CheckInPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('[Settings] -BUILDING- CheckInPage');
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black87),
        textTheme: Theme.of(context).textTheme,
        elevation: 0.0,
        title: Text('Check In'),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(120.0),
          child: CheckInFormSummary(),
        ),
      ),
      // bottomNavigationBar: buildBottomNavigationBar(context, 1),
      body: CheckIn(),
    );
  }
}
