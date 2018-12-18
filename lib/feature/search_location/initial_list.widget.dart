import 'package:flutter/material.dart';
import 'package:jamsalon/core/config/ui.config.dart';
import 'package:jamsalon/feature/search_location/current_location_button.widget.dart';
import 'package:jamsalon/feature/search_location/recent_list.widget.dart';
import 'package:jamsalon/feature/search_location/saved_list.widget.dart';

class InitialList extends StatelessWidget {
  const InitialList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      padding: UiConfig.LIST_PADDING,
      children: <Widget>[
        CurrentLocationButton(),
        SavedList(),
        RecentList(),
      ],
    );
  }
}
