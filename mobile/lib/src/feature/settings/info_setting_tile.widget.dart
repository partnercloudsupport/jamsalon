import 'package:jamsalon/src/feature/_.imports.dart';

class InfoSettingTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Icon icon;
  final Widget content;

  const InfoSettingTile({
    Key key,
    @required this.title,
    this.subtitle = '',
    this.icon,
    @required this.content,
  })  : assert(title != null),
        assert(content != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    print('[Settings] -BUILDING- InfoSettingItem');

    return ListTile(
      title: Text(this.title),
      subtitle: Text(
        this.subtitle,
        style: TextStyle(fontStyle: FontStyle.italic),
      ),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: () => showDialog<String>(
            context: context,
            builder: (context) => _buildDialog(context),
          ),
    );
  }

  AlertDialog _buildDialog(BuildContext context) {
    return AlertDialog(
      title: Text(this.title),
      content: this.content,
      actions: <Widget>[
        FlatButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text('Ok'),
        ),
      ],
    );
  }
}
