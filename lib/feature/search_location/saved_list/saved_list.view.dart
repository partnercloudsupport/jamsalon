import 'package:flutter/material.dart';
import 'package:jamsalon/core/config/ui.config.dart';
import 'package:jamsalon/jam/widget/index.dart';
import '../widget/index.dart';
import 'saved_list.controller.dart';
import '../search_location_list_item/search_location_list_item.view.dart';

class SavedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SavedListController.storeConnector(
      builder: (SavedListViewModel vm) => SearchLocationCard(
            title: UiConfig.SAVED_LIST_CAPTION,
            child: JamExpandableColumn(
              initialCount: 3,
              viewMoreText: UiConfig.VIEW_MORE_BUTTON_TEXT,
              children: vm.list
                  .map(
                    (item) => SearchLocationListItem(
                          icon: item.name == 'Home'
                              ? Icons.home
                              : Icons.location_on,
                          item: item,
                        ),
                  )
                  .toList(),
            ),
          ),
    );
  }
}
