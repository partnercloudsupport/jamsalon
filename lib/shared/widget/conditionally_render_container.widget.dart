import 'package:flutter/material.dart';

class ConditionallyRenderContainer extends StatelessWidget {
  final Widget child;
  final bool show;
  ConditionallyRenderContainer({this.child, this.show});

  @override
  Widget build(BuildContext context) {
    return this.show ? this.child : Container();
  }
}
