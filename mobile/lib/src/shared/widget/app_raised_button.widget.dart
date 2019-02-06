import 'package:flutter/material.dart';

class AppRaisedButton extends StatelessWidget {
  final Function() onPressed;
  final String label;

  const AppRaisedButton({
    Key key,
    @required this.onPressed,
    @required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(label),
      color: Theme.of(context).accentColor,
      colorBrightness: Brightness.dark,
      onPressed: this.onPressed,
    );
  }
}
