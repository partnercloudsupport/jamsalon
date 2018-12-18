import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:jamsalon/shared/store/app.store.dart';
import 'package:jamsalon/feature/search_location/store/search_location.store.dart';
import 'package:jamsalon/feature/search_location/search_bar.widget.dart';
import 'package:jamsalon/feature/search_location/initial_list.widget.dart';
import 'package:jamsalon/feature/search_location/keyword_too_short_message.widget.dart';
import 'package:jamsalon/feature/search_location/prediction_list.widget.dart';

class SearchLocationPage extends StatelessWidget {
  const SearchLocationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('-BUILDING- SearchLocationPage');
    return StoreConnector<AppState, SearchLocationViewModel>(
      converter: (Store<AppState> store) =>
          SearchLocationViewModel.fromStore(store),
      builder: (BuildContext context, SearchLocationViewModel vm) => Scaffold(
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.black87),
              title: SearchBar(),
              centerTitle: true,
              elevation: 1.0,
            ),
            body: vm.hasUserStartedTyping
                ? vm.isKeywordTooShortToSearch
                    ? KeywordTooShortMessage()
                    : PredictionList()
                : InitialList(),
          ),
    );
  }
}
