import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:jamsalon/core/config/ui.config.dart';
import 'package:jamsalon/jam/widget/index.dart';
import 'package:jamsalon/shared/store/index.dart';
import 'package:jamsalon/feature/search_location/store/index.dart';
import 'package:jamsalon/feature/search_location/search_location_list_group_header.widget.dart';
import 'package:jamsalon/feature/search_location/search_location_list_item.widget.dart';

class RecentList extends StatelessWidget {
  const RecentList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, RecentListViewModel>(
      converter: (Store<AppState> store) =>
          RecentListViewModel.fromStore(store),
      onInit: (Store<AppState> store) =>
          store.dispatch(FetchRecentListAction()),
      builder: (BuildContext context, RecentListViewModel vm) => Column(
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
