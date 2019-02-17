import 'package:jamsalon/src/feature/_.imports.dart';
import 'account_setting_group.view.dart';
import 'notification_setting_group.view.dart';
import 'personal_info_setting_group.view.dart';
import 'profile_setting_group.view.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('[Settings] -BUILDING- Settings');
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          ProfileSettingGroup(),
          PersonalInfoSettingGroup(),
          NotificationSettingGroup(),
          AccountSettingGroup(),
        ],
      ),
    );
  }
}
