import 'package:flutter/material.dart';
import 'package:jamsalon/core/config/ui.config.dart';
import 'package:jamsalon/feature/search_location/widget/index.dart';
import '../current_location_button/current_location_button.view.dart';
import '../recent_list/recent_list.view.dart';
import '../saved_list/saved_list.view.dart';

class InitialList extends StatelessWidget {
  const InitialList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        CurrentLocationButton(),
        SizedBox(height: 10.0),
        Column(
          children: [
            SavedList(),
            SizedBox(height: 20.0),
            RecentList(),
          ],
        ),
      ],
    );
  }
}
