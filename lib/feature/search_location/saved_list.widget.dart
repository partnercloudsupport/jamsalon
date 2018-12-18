import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:jamsalon/core/config/ui.config.dart';
import 'package:redux/redux.dart';
import 'package:jamsalon/jam/jam.dart';
import 'package:jamsalon/shared/store/app.store.dart';
import 'package:jamsalon/feature/search_location/store/search_location.store.dart';

class SavedList extends StatelessWidget {
  const SavedList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SavedListViewModel>(
      converter: (Store<AppState> store) => SavedListViewModel.fromStore(store),
      onInit: (Store<AppState> store) => store.dispatch(FetchSavedListAction()),
      builder: (BuildContext context, SavedListViewModel vm) => Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  UiConfig.SAVED_LIST_CAPTION,
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
                            leading: Icon(item.name == 'Home'
                                ? Icons.home
                                : Icons.location_on),
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
