import 'package:flutter/material.dart';

class JamTitleText1 extends StatelessWidget {
  final String text;

  JamTitleText1(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
        fontSize: 34.0,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
