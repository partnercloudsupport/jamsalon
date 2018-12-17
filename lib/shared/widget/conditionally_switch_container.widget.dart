import 'package:flutter/material.dart';

class ConditionallySwitchContainer extends StatelessWidget {
  final Widget child1;
  final Widget child2;
  final bool condition;

  ConditionallySwitchContainer({this.child1, this.child2, this.condition});

  @override
  Widget build(BuildContext context) {
    return this.condition ? this.child1 : this.child2;
  }
}
