import 'package:jamsalon/src/feature/_.imports.dart';
import 'setting_group.widget.dart';

class SubscriptionSettingGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('[Settings] -BUILDING- SubscriptionSettingGroup');
    return SettingGroup(
      title: 'Subscription',
      children: <Widget>[
        ListTile(
          title: Text('Subscription'),
          subtitle: Text('You are on a monthly subscription paying INR 500.'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
      ],
    );
  }
}
