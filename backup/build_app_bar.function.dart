import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    brightness: Brightness.light,
    titleSpacing: 15.0,
    leading: IconButton(
      padding: EdgeInsets.only(left: 25.0),
      icon: Icon(
        Icons.account_circle,
        size: 28.0,
        color: Color.fromRGBO(180, 180, 180, 1.0),
      ),
      onPressed: () {},
    ),
    title: Text(
      'JAMSALON',
      style: TextStyle(
        color: Colors.black87,
        fontSize: 24.0,
      ),
    ),
  );
}
