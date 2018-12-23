import 'package:flutter/material.dart';
import 'package:jamsalon/core/config/ui.config.dart';
import 'package:jamsalon/jam/widget/index.dart';
import 'recent_list.controller.dart';
import 'search_location_list_group_header.widget.dart';
import 'search_location_list_item.widget.dart';

class RecentList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RecentListController.storeConnector(
      builder: (RecentListViewModel vm) => Column(
            children: <Widget>[
              SearchLocationListGroupHeader(text: UiConfig.RECENT_LIST_CAPTION),
              JamExpandableColumn(
                initialCount: 3,
                viewMoreText: UiConfig.VIEW_MORE_BUTTON_TEXT,
                children: vm.list
                    .map(
                      (item) => SearchLocationListItem(
                            icon: Icons.history,
                            title: item.name,
                            subtitle: item.address,
                          ),
                    )
                    .toList(),
              ),
            ],
          ),
    );
  }
}
