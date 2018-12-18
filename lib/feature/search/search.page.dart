import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:jamsalon/feature/search/search_bar.widget.dart';
import 'package:jamsalon/feature/search/search_list.widget.dart';
import 'package:jamsalon/shared/store/app.state.dart';
import 'package:jamsalon/feature/search/store/search.store.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SearchPageState();
  }
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    print('-BUILDING- SearchPage');
    return StoreConnector<AppState, SearchViewModel>(
      converter: (Store<AppState> store) => SearchViewModel.fromStore(store),
      builder: (BuildContext context, SearchViewModel searchViewModel) =>
          Scaffold(
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.black87),
              title: SearchBar(searchFn: searchViewModel.searchAction),
            ),
            body: Container(
              padding: EdgeInsets.only(top: 30.0),
              child: SearchList(),
            ),
          ),
    );
  }
}
