import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:jamsalon/shared/store/index.dart';
import 'store/index.dart';
import 'view/search_bar.view.dart';
import 'view/initial_list.view.dart';
import 'view/keyword_too_short_message.widget.dart';
import 'view/prediction_list.view.dart';

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
