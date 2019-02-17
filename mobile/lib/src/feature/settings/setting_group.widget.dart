import 'package:jamsalon/src/feature/_.imports.dart';

class SettingGroup extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const SettingGroup({
    Key key,
    @required this.title,
    this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('[Settings] -BUILDING- SettingGroup');
    return Container(
      margin: EdgeInsets.only(top: 4.0),
      color: Theme.of(context).primaryColorLight,
      child: ExpansionTile(
        initiallyExpanded: true,
        trailing: Icon(null),
        title: Text(
          this.title,
          style: Theme.of(context).textTheme.title.copyWith(
                color: Colors.black54,
              ),
        ),
        children: children == null ? null : children
          ..add(SizedBox(height: 20.0)),
      ),
    );
  }
}
