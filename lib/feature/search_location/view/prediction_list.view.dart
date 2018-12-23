import 'package:flutter/material.dart';
import 'package:jamsalon/core/config/ui.config.dart';
import 'prediction_list_item.widget.dart';
import 'prediction_list.controller.dart';

class PredictionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PredictionListController.storeConnector(
      builder: (PredictionListViewModel vm) => ListView(
            physics: BouncingScrollPhysics(),
            padding: UiConfig.LIST_PADDING,
            children:
                vm.list.map((item) => PredictionListItem(item: item)).toList(),
          ),
    );
  }
}
