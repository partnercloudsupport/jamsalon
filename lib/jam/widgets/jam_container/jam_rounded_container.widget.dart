import 'package:flutter/material.dart';

class JamRoundedContainer extends StatelessWidget {
  final Widget child;
  final double borderRadius;

  JamRoundedContainer({this.child, this.borderRadius = 4.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(this.borderRadius),
      ),
      child: this.child,
    );
  }
}
