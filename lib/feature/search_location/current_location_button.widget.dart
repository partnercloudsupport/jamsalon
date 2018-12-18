import 'package:flutter/material.dart';

class CurrentLocationButton extends StatelessWidget {
  final Function onPressed;

  CurrentLocationButton({@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton.icon(
        color: Theme.of(context).accentColor,
        colorBrightness: Brightness.dark,
        onPressed: this.onPressed,
        icon: Icon(Icons.gps_fixed, size: 16.0),
        label: Text('Use current location'),
      ),
    );
  }
}
