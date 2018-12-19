import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:jamsalon/core/config/ui.config.dart';
import 'package:jamsalon/shared/store/index.dart';
import 'package:jamsalon/feature/search_location/store/index.dart';
import 'package:jamsalon/feature/search_location/prediction_list_item.widget.dart';

class PredictionList extends StatelessWidget {
  const PredictionList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PredictionListViewModel>(
      converter: (Store<AppState> store) =>
          PredictionListViewModel.fromStore(store),
      builder: (BuildContext context, PredictionListViewModel vm) => ListView(
            physics: BouncingScrollPhysics(),
            padding: UiConfig.LIST_PADDING,
            children:
                vm.list.map((item) => PredictionListItem(item: item)).toList(),
          ),
    );
  }
}
