import 'package:flutter/material.dart';
import 'package:jamsalon/feature/salon/search_options.widget..dart';
import 'package:jamsalon/feature/salon/salon_list_item.widget.dart';
import 'salon_list.controller.dart';

class SalonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('-BUILDING- SalonList');
    return SalonListController.storeConnector(
      builder: (SalonListViewModel vm) => Container(
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
