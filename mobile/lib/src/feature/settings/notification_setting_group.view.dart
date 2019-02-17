import 'package:jamsalon/src/feature/_.imports.dart';
import 'setting_group.widget.dart';
import 'switch_setting_tile.widget.dart';

class NotificationSettingGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('[Settings] -BUILDING- NotificationSettingGroup');
    return SettingGroup(
      title: 'Notification',
      children: <Widget>[
        SwitchSettingTile(
          title: 'Queue Notifications',
          subtitle:
              'You will not be notified where you stand in the check in queue.',
          value: false,
          onSubmit: (isSelected) => print(isSelected),
        ),
        SwitchSettingTile(
          title: 'Offer Notifications',
          subtitle: 'You will not be notified for offers.',
          value: false,
          onSubmit: (isSelected) => print(isSelected),
        ),
        SwitchSettingTile(
          title: 'New Salon Notifications',
          subtitle:
              'You will be notified when there is a new salon in your area.',
          value: true,
          onSubmit: (isSelected) => print(isSelected),
        ),
      ],
    );
  }
}
