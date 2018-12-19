import 'package:flutter/material.dart';
import 'package:jamsalon/feature/salon/search_location.widget.dart';
import 'package:jamsalon/jam/widget/index.dart';

class SearchOptions extends StatelessWidget {
  const SearchOptions({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.0, right: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Search', style: Theme.of(context).textTheme.display1),
                SizedBox(height: 20.0),
                JamLine(length: 60.0, thickness: 0.5),
                SizedBox(height: 30.0),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: SearchLocation(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
