import 'package:flutter/material.dart';

import '../../core/store_connectors.dart';
import 'search_location_card.widget.dart';
import 'search_location_list_item.view.dart';

class PredictionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnectors.predictionList(
      builder: (vm) => ListView.builder(
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, position) => SearchLocationCard(
                child: SearchLocationListItem(item: vm.list[position])),
            itemCount: vm.list.length,
          ),
    );
  }
}
