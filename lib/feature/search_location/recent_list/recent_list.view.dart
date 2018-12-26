import 'package:flutter/material.dart';
import 'package:jamsalon/core/config/ui.config.dart';
import 'package:jamsalon/jam/widget/index.dart';
import '../widget/index.dart';
import 'recent_list.controller.dart';
import '../search_location_list_item/search_location_list_item.view.dart';

class RecentList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RecentListController.storeConnector(
      builder: (RecentListViewModel vm) => SearchLocationCard(
            title: UiConfig.RECENT_LIST_CAPTION,
            child: JamExpandableColumn(
              initialCount: 3,
              viewMoreText: UiConfig.VIEW_MORE_BUTTON_TEXT,
              children: vm.list
                  .map(
                    (item) => SearchLocationListItem(
                          icon: Icons.history,
                          item: item,
                        ),
                  )
                  .toList(),
            ),
          ),
    );
  }
}
