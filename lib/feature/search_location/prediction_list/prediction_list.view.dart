import 'package:flutter/material.dart';

import '../widget/index.dart';
import 'prediction_list.controller.dart';
import '../search_location_list_item/search_location_list_item.view.dart';

class PredictionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PredictionListController.storeConnector(
      builder: (PredictionListViewModel vm) => ListView.builder(
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, position) => SearchLocationCard(
                child: SearchLocationListItem(item: vm.list[position])),
            itemCount: vm.list.length,
          ),
    );
  }
}
