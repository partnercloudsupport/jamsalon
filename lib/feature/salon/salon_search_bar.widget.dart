import 'package:flutter/material.dart';

class SalonSearchBar extends StatelessWidget {
  final Function searchFn;
  SalonSearchBar(this.searchFn);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: Color.fromRGBO(68, 68, 68, 0.1),
        onPressed: () => searchFn(),
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 5.0, right: 15.0),
              child: Icon(
                Icons.search,
                color: Colors.black38,
                size: 18.0,
              ),
            ),
            Text(
              'Search for salons',
              style: TextStyle(color: Colors.black38),
            ),
          ],
        ),
      ),
    );
  }
}
