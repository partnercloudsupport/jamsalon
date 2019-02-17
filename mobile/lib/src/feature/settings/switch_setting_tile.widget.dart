import 'package:jamsalon/src/feature/_.imports.dart';

class SwitchSettingTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Icon icon;
  final bool value;
  final Function(bool value) onSubmit;

  const SwitchSettingTile({
    Key key,
    @required this.title,
    this.subtitle = '',
    this.icon,
    this.value = false,
    @required this.onSubmit,
  })  : assert(title != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    print('[Settings] -BUILDING- SwitchSettingItem');

    return SwitchListTile(
      title: Text(this.title),
      subtitle: Text(
        this.subtitle,
        style: TextStyle(fontStyle: FontStyle.italic),
      ),
      value: this.value,
      onChanged: this.onSubmit,
    );
  }
}
