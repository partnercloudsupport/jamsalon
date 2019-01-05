import 'package:flutter/material.dart';

import '../../core/store_connectors.dart';
import 'search_options.widget.dart';
import 'salon_list_item.widget.dart';

class SalonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('-BUILDING- SalonList');
    return StoreConnectors.salonList(
      builder: (vm) => Container(
            height: 360,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [SearchOptions()]..addAll(
                  vm.list.map((item) => SalonListItem(salon: item)).toList(),
                ),
            ),
          ),
    );
  }
}
