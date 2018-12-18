import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:jamsalon/core/config/ui.config.dart';
import 'package:redux/redux.dart';
import 'package:jamsalon/jam/jam.dart';
import 'package:jamsalon/shared/store/app.store.dart';
import 'package:jamsalon/feature/search_location/store/search_location.store.dart';

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
              ListTile(
                title: Text(
                  UiConfig.RECENT_LIST_CAPTION,
                  style: Theme.of(context).textTheme.body2.copyWith(
                        color: Theme.of(context).accentColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              JamExpandableColumn(
                initialCount: 3,
                viewMoreText: UiConfig.VIEW_MORE_BUTTON_TEXT,
                children: vm.list
                    .map(
                      (item) => ListTile(
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 8.0,
                            ),
                            leading: Icon(Icons.history),
                            title: Text(item.name),
                            subtitle: Text(item.address),
                          ),
                    )
                    .toList(),
              ),
            ],
          ),
    );
  }
}
