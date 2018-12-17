import 'package:flutter/material.dart';

class CurrentLocationButton extends StatelessWidget {
  final Function onPressed;

  CurrentLocationButton({@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        onPressed: this.onPressed,
        textColor: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.gps_fixed, size: 18.0),
            SizedBox(width: 15.0),
            Text('Use current location'),
          ],
        ),
      ),
    );
  }
}
