import 'package:flutter/material.dart';

class SalonSearchBar extends StatelessWidget {
  final Function searchFn;
  SalonSearchBar(this.searchFn);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: Color.fromRGBO(68, 68, 68, 0.1),
        onPressed: () => searchFn(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 5.0, right: 15.0),
              child: Icon(
                Icons.location_on,
                color: Colors.black38,
                size: 18.0,
              ),
            ),
            Expanded(
              child: Text(
                'New Perungulathur, Chennai',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.black38),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 5.0),
              child: Text(
                'Change',
                style: TextStyle(color: Theme.of(context).accentColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
