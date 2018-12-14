import 'package:flutter/material.dart';

class JamLine extends StatelessWidget {
  final double length;
  final double thickness;
  final Color color;
  final BorderStyle style;

  JamLine({
    @required this.length,
    this.thickness = 1.0,
    this.color = Colors.black,
    this.style = BorderStyle.solid,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.length,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: this.thickness,
            color: this.color,
            style: this.style,
          ),
        ),
      ),
    );
  }
}
