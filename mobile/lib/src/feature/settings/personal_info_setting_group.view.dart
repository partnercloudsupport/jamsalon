import 'package:jamsalon/src/feature/_.imports.dart';
import 'setting_group.widget.dart';
import 'select_setting_tile.widget.dart';
import 'switch_setting_tile.widget.dart';

class PersonalInfoSettingGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('[Settings] -BUILDING- PersonalInfoSettingGroup');
    return SettingGroup(
      title: 'Personal Information',
      children: <Widget>[
        SelectSettingTile<String>(
          title: 'BodyFrame',
          subtitle: 'Man',
          value: 'Man',
          selectionList: ['Man', 'Woman', 'Boy', 'Girl', 'Baby'],
          itemBuilder: (item) => Text(item),
          onSubmit: (data) => print(data),
        ),
        SelectSettingTile<String>(
          title: 'Hair Length',
          subtitle: 'Short',
          value: 'Short',
          selectionList: ['Bald', 'Short', 'Medium', 'Long'],
          itemBuilder: (item) => Text(item),
          onSubmit: (data) => print(data),
        ),
        SelectSettingTile<String>(
          title: 'Hair Type',
          subtitle: 'Coarse',
          value: 'Coarse',
          selectionList: ['Curly', 'Coarse', 'Silky'],
          itemBuilder: (item) => Text(item),
          onSubmit: (data) => print(data),
        ),
        SelectSettingTile<String>(
          title: 'Hair Thickness',
          subtitle: 'Thick',
          value: 'Thick',
          selectionList: ['Thin', 'Normal', 'Thick'],
          itemBuilder: (item) => Text(item),
          onSubmit: (data) => print(data),
        ),
        SelectSettingTile<String>(
          title: 'Hair Color',
          subtitle: 'Black',
          value: 'Black',
          selectionList: [
            'Blonde',
            'Brunette',
            'Black',
            'Artificially Coloured',
            'Other'
          ],
          itemBuilder: (item) => Text(item),
          onSubmit: (data) => print(data),
        ),
        SwitchSettingTile(
          title: 'Grey Hairs?',
          subtitle: 'Yes',
          value: true,
          onSubmit: (data) => print(data),
        ),
        SwitchSettingTile(
          title: 'Dandruff?',
          subtitle: 'No',
          value: false,
          onSubmit: (data) => print(data),
        ),
        SelectSettingTile<String>(
          title: 'Skin Tone',
          subtitle: 'Dark',
          value: 'Dark',
          selectionList: ['Light', 'Wheatish', 'Dark'],
          itemBuilder: (item) => Text(item),
          onSubmit: (data) => print(data),
        ),
        SelectSettingTile<String>(
          title: 'Skin Type',
          subtitle: 'Dry',
          value: 'Dry',
          selectionList: ['Dry', 'Oily'],
          itemBuilder: (item) => Text(item),
          onSubmit: (data) => print(data),
        ),
      ],
    );
  }
}
