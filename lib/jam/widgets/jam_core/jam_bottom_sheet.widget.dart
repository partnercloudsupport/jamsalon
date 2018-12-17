import 'package:flutter/material.dart';

class JamBottomSheet extends StatelessWidget {
  final double childHeight;
  final List<ListTile> children;

  JamBottomSheet({this.childHeight = 100.0, this.children = const []});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (this.childHeight * this.children.length) + 40.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: this.children.map((child) {
          return FlatButton(
            onPressed: () {},
            child: ListTile(
              leading: child.leading,
              title: Text(
                (child.title as Text).data,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: child.subtitle,
            ),
          );
        }).toList(),
      ),
    );
  }
}
