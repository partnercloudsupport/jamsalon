import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      // color: Color.fromRGBO(233, 236, 239, 1.0),
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      child: SizedBox(
        height: 100,
        width: 100,
        child: CircularProgressIndicator(
          backgroundColor: Colors.lightGreen,
        ),
      ),
    );
  }
}
