import 'package:jamsalon/src/feature/_.imports.dart';

import 'profile.view.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('[Profile] -BUILDING- ProfilePage');
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        // backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black87),
        elevation: 0.0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Container(
            padding: EdgeInsets.only(left: 30.0),
            alignment: Alignment.centerLeft,
            child: Text(
              'Profile',
              style: Theme.of(context)
                  .textTheme
                  .display1
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(context, 1),
      body: Profile(),
    );
  }
}
