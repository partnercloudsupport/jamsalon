import 'package:flutter/material.dart';
import 'package:jamsalon/core/config/ui.config.dart';
import 'current_location_button.view.dart';
import 'recent_list.view.dart';
import 'saved_list.view.dart';

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
