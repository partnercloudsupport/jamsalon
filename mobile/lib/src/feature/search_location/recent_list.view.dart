import 'package:flutter/material.dart';
import 'package:jam_flutter_widgets/widgets.dart';

import '../../core/store_connectors.dart';
import 'search_location_card.widget.dart';
import 'search_location_list_item.view.dart';

class RecentList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnectors.recentList(
      builder: (vm) => SearchLocationCard(
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
