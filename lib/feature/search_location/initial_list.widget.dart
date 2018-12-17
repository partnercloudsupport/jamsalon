import 'package:flutter/material.dart';
import 'package:jamsalon/feature/search_location/current_location_button.widget.dart';
import 'package:jamsalon/feature/search_location/recent_list.widget.dart';
import 'package:jamsalon/feature/search_location/saved_list.widget.dart';

class InitialList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CurrentLocationButton(onPressed: () {}),
        SavedList(),
        RecentList(),
        SizedBox(height: 200.0),
      ],
    );
  }
}
