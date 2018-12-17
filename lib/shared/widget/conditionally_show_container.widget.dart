import 'package:flutter/material.dart';

class ConditionallyShowContainer extends StatelessWidget {
  final Widget child;
  final bool condition;
  ConditionallyShowContainer({this.child, this.condition});

  @override
  Widget build(BuildContext context) {
    return Opacity(opacity: this.condition ? 1.0 : 0.0, child: this.child);
  }
}
