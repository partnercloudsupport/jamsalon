import 'package:jamsalon/src/feature/_.imports.dart';
import 'setting_group.widget.dart';
import 'select_setting_tile.widget.dart';
import 'text_setting_tile.widget.dart';

class ProfileSettingGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('[Settings] -BUILDING- ProfileSettingGroup');
    return SettingGroup(
      title: 'Profile',
      children: <Widget>[
        TextSettingTile(
          title: 'Name',
          subtitle: 'Amsakanna',
          value: 'Amsakanna',
          onSubmit: (data) => print(data),
        ),
        SelectSettingTile<String>(
          title: 'Gender',
          subtitle: 'Male',
          value: 'Male',
          selectionList: ['Male', 'Female', 'Other'],
          // itemBuilder: (item) => ListTile(title: Text(item)),
          itemBuilder: (item) => Text(item),
          onSubmit: (data) => print(data),
        ),
      ],
    );
  }
}
