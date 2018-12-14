import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

CupertinoTabBar buildBottomNavigationBar(BuildContext context, currentIndex) {
  return CupertinoTabBar(
    currentIndex: currentIndex,
    iconSize: 20.0,
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home)),
      BottomNavigationBarItem(icon: Icon(Icons.search)),
      BottomNavigationBarItem(icon: Icon(Icons.history)),
    ],
    onTap: (int index) {
      switch (index) {
        case 0:
          Navigator.pushReplacementNamed(context, '/');
          break;
        case 1:
          Navigator.pushReplacementNamed(context, '/salon');
          break;
        case 2:
          Navigator.pushReplacementNamed(context, '/history');
          break;
        default:
          Navigator.pushReplacementNamed(context, '/');
      }
    },
  );
}
