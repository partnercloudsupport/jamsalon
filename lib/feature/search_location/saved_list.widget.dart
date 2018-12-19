import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:jamsalon/jam/widget/index.dart';
import 'package:jamsalon/core/config/ui.config.dart';
import 'package:jamsalon/shared/store/index.dart';
import 'package:jamsalon/feature/search_location/store/index.dart';
import 'package:jamsalon/feature/search_location/search_location_list_group_header.widget.dart';
import 'package:jamsalon/feature/search_location/search_location_list_item.widget.dart';

class SavedList extends StatelessWidget {
  const SavedList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SavedListViewModel>(
      converter: (Store<AppState> store) => SavedListViewModel.fromStore(store),
      onInit: (Store<AppState> store) => store.dispatch(FetchSavedListAction()),
      builder: (BuildContext context, SavedListViewModel vm) => Column(
            children: <Widget>[
              SearchLocationListGroupHeader(text: UiConfig.SAVED_LIST_CAPTION),
              JamExpandableColumn(
                initialCount: 3,
                viewMoreText: UiConfig.VIEW_MORE_BUTTON_TEXT,
                children: vm.list
                    .map(
                      (item) => SearchLocationListItem(
                            icon: item.name == 'Home'
                                ? Icons.home
                                : Icons.location_on,
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
