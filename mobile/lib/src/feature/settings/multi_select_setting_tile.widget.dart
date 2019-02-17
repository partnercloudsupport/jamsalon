import 'package:jamsalon/src/feature/_.imports.dart';

class MultiSelectSettingTile<T> extends StatelessWidget {
  final String title;
  final String subtitle;
  final Icon icon;
  final Widget Function(T item) itemBuilder;
  final List<T> selectionList;
  final List<T> values;
  final Function(T value) onSubmit;

  const MultiSelectSettingTile({
    Key key,
    @required this.title,
    this.subtitle = '',
    this.icon,
    @required this.values,
    @required this.itemBuilder,
    this.selectionList = const [],
    @required this.onSubmit,
  })  : assert(title != null),
        assert(itemBuilder != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    print('[Settings] -BUILDING- MultiSelectSettingItem');

    List<T> newValues = this.values;

    return ListTile(
      title: Text(this.title),
      subtitle: Text(
        this.subtitle,
        style: TextStyle(fontStyle: FontStyle.italic),
      ),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: () => showDialog<List<T>>(
            context: context,
            builder: (context) => _buildDialog(context, newValues),
          ).then((result) =>
              result == null || result.length == 0 || result == this.values
                  ? null
                  : this.onSubmit),
    );
  }

  AlertDialog _buildDialog(BuildContext context, List<T> newValues) {
    return AlertDialog(
      title: Text(this.title),
      content: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: this.selectionList.length,
          itemBuilder: (context, i) {
            T value = this.selectionList[i];
            return GestureDetector(
              onTap: () => newValues.contains(value)
                  ? newValues.remove(value)
                  : newValues.add(value),
              child: this.itemBuilder(value),
            );
          }),
      actions: <Widget>[
        FlatButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text('Cancel'),
        ),
        FlatButton(
          onPressed: () => Navigator.of(context).pop(newValues),
          child: Text('Ok'),
        ),
      ],
    );
  }
}
