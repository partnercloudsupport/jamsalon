import 'package:flutter/material.dart';

class TextSettingTile extends StatefulWidget {
  final String title;
  final String subtitle;
  final Icon icon;
  final bool obscureText;
  final String value;
  final Function(String value) onSubmit;

  const TextSettingTile({
    Key key,
    @required this.title,
    this.subtitle = '',
    this.icon,
    this.obscureText = false,
    @required this.value,
    @required this.onSubmit,
  })  : assert(title != null),
        assert(onSubmit != null),
        super(key: key);

  @override
  _TextSettingTile createState() => _TextSettingTile(this.value);
}

class _TextSettingTile extends State<TextSettingTile> {
  final TextEditingController _controller;

  _TextSettingTile(value)
      : _controller = TextEditingController(text: value),
        super();

  @override
  Widget build(BuildContext context) {
    print('[Settings] -BUILDING- TextSettingItem');

    return ListTile(
      title: Text(widget.title),
      subtitle: Text(
        widget.subtitle,
        style: TextStyle(fontStyle: FontStyle.italic),
      ),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: () => showDialog<String>(
            context: context,
            builder: (context) => _buildDialog(context),
          ).then((result) {
            this._controller.value =
                this._controller.value.copyWith(text: widget.value);
            if (result == null || result == widget.value) {
              return null;
            } else {
              return widget.onSubmit(result);
            }
          }),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  AlertDialog _buildDialog(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title),
      content: TextFormField(
        autofocus: true,
        controller: this._controller,
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text('Cancel'),
        ),
        FlatButton(
          onPressed: () => Navigator.of(context).pop(this._controller.text),
          child: Text('Ok'),
        ),
      ],
    );
  }
}
