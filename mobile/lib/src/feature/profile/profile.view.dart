import 'package:jam_flutter_widgets/widgets.dart' as jam;

import 'package:jamsalon/src/feature/_.imports.dart';

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('[Profile] -BUILDING- Profile');
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: List.generate(
            20,
            (index) {
              return Container(
                padding: EdgeInsets.only(top: 20.0),
                child: jam.Card(
                  title: 'Profile $index',
                  child: Text('description here'),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
