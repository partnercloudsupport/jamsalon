import 'package:flutter/material.dart';

class AppRaisedButtonWithIcon extends StatelessWidget {
  final Function() onPressed;
  final String label;
  final IconData iconData;

  const AppRaisedButtonWithIcon({
    Key key,
    @required this.onPressed,
    @required this.label,
    @required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      color: Theme.of(context).accentColor,
      colorBrightness: Brightness.dark,
      onPressed: this.onPressed,
      icon: Icon(this.iconData, size: 16.0),
      label: Text(this.label),
    );
  }
}
