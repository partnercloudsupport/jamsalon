import 'package:flutter/material.dart';

class ConditionallyRenderContainer extends StatelessWidget {
  final Widget child;
  final bool condition;
  ConditionallyRenderContainer({this.child, this.condition});

  @override
  Widget build(BuildContext context) {
    return this.condition ? this.child : Container();
  }
}
