import 'package:flutter/material.dart';

class ConditionallyShowContainer extends StatelessWidget {
  final Widget child;
  final bool show;
  ConditionallyShowContainer({this.child, this.show});

  @override
  Widget build(BuildContext context) {
    return Opacity(opacity: this.show ? 1.0 : 0.0, child: this.child);
  }
}
