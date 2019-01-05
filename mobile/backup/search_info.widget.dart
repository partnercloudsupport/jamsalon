import 'package:flutter/material.dart';

class SearchInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              FlatButton(
                shape: CircleBorder(),
                color: Color.fromRGBO(220, 220, 220, 1),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(Icons.gps_off),
                ),
                onPressed: () {},
              ),
              Text('GPS is off'),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: <Widget>[
              FlatButton(
                shape: CircleBorder(),
                color: Color.fromRGBO(220, 220, 220, 1),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(Icons.search),
                ),
                onPressed: () {},
              ),
              Text('Location not entered'),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: <Widget>[
              FlatButton(
                shape: CircleBorder(),
                color: Color.fromRGBO(60, 60, 60, 1),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {},
              ),
              Text(
                'Showing favorite salons',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
