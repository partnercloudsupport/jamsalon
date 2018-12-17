import 'package:flutter/material.dart';

class JamBubbleDecoration extends StatelessWidget {
  final Widget child;

  JamBubbleDecoration({this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Stack(
        children: <Widget>[
          this.child,
          Positioned(
            top: 140.0,
            left: 40.0,
            width: 50.0,
            height: 50.0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
            ),
          ),
          Positioned(
            top: 30.0,
            left: 320.0,
            width: 20.0,
            height: 20.0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.purple,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
