import 'package:flutter/material.dart';

class AppRaisedButton extends StatelessWidget {
  final Function() onPressed;
  final Text label;

  const AppRaisedButton({
    Key key,
    @required this.onPressed,
    @required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).accentColor,
      colorBrightness: Brightness.dark,
      onPressed: this.onPressed,
    );
  }
}
