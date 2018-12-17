import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:jamsalon/shared/store/app.store.dart';
import 'package:jamsalon/shared/widget/conditionally_render_container.widget.dart';
import 'package:jamsalon/feature/search_location/store/search_location.store.dart';

class SavedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SavedListViewModel>(
      converter: (Store<AppState> store) => SavedListViewModel.fromStore(store),
      onInit: (Store<AppState> store) => store.dispatch(GetSavedListAction()),
      builder: (BuildContext context, SavedListViewModel vm) => Column(
            children: <Widget>[
              ListTile(
                leading: Opacity(opacity: 0.0, child: Icon(Icons.bookmark)),
                title: Text(
                  'SAVED ADDRESSES',
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
                                leading: Icon(item.name == 'Home'
                                    ? Icons.home
                                    : Icons.location_on),
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
                  leading: Opacity(opacity: 0.0, child: Icon(Icons.bookmark)),
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
