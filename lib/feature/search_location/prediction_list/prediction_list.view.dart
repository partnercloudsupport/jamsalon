import 'package:flutter/material.dart';

import 'package:jamsalon/core/config/ui.config.dart';
import '../widget/index.dart';
import 'prediction_list.controller.dart';

class PredictionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PredictionListController.storeConnector(
      builder: (PredictionListViewModel vm) => ListView.builder(
            physics: BouncingScrollPhysics(),
            // padding: UiConfig.LIST_PADDING,
            itemBuilder: (context, position) => SearchLocationCard(
                child: SearchLocationListTile(item: vm.list[position])),
            itemCount: vm.list.length,
          ),
    );
  }
}
