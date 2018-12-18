import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:jamsalon/core/config/ui.config.dart';
import 'package:redux/redux.dart';
import 'package:jamsalon/jam/jam.dart';
import 'package:jamsalon/shared/store/app.store.dart';
import 'package:jamsalon/feature/search_location/store/search_location.store.dart';

class RecentList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, RecentListViewModel>(
      converter: (Store<AppState> store) =>
          RecentListViewModel.fromStore(store),
      onInit: (Store<AppState> store) => store.dispatch(GetRecentListAction()),
      builder: (BuildContext context, RecentListViewModel vm) => Column(
            children: <Widget>[
              ListTile(
                leading: Text(''),
                title: Text(
                  SEARCH_LOCATION_RECENT_LIST_CAPTION,
                  style: Theme.of(context).textTheme.body2.copyWith(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Column(
                children: vm.list
                    .map(
                      (item) => Column(
                            children: <Widget>[
                              ListTile(
                                leading: Icon(Icons.history),
                                title: Text(item.name),
                                subtitle: Text(item.address),
                              ),
                              ConditionallyRenderContainer(
                                condition:
                                    vm.list.indexOf(item) != vm.list.length - 1,
                                child: Divider(),
                              ),
                            ],
                          ),
                    )
                    .toList(),
              ),
              ConditionallyRenderContainer(
                condition: !vm.isExpanded,
                child: ListTile(
                  leading: Text(''),
                  onTap: vm.expandList,
                  title: Row(
                    children: <Widget>[
                      Text(
                        'VIEW MORE',
                        style: Theme.of(context)
                            .textTheme
                            .body2
                            .copyWith(color: Colors.black45),
                      ),
                      Icon(Icons.expand_more, color: Colors.black45),
                    ],
                  ),
                ),
              ),
              // Divider(color: Colors.black87),
            ],
          ),
    );
  }
}
