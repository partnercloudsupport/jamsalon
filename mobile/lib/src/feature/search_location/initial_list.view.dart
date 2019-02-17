import 'package:jamsalon/src/feature/_.imports.dart';
import 'current_location_button.view.dart';
import 'recent_list.view.dart';
import 'saved_list.view.dart';

class InitialList extends StatelessWidget {
  const InitialList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        CurrentLocationButton(),
        SizedBox(height: 10.0),
        SavedList(),
        SizedBox(height: 20.0),
        RecentList(),
      ],
    );
  }
}
