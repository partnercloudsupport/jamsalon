import 'package:flutter/material.dart';
import 'package:jamsalon/shared/model/salon.model.dart';
import 'package:jamsalon/feature/salon/search_options.widget..dart';
import 'package:jamsalon/feature/salon/salon_list_item.widget.dart';

class SalonList extends StatelessWidget {
  final List<Salon> list;

  SalonList(this.list);

  @override
  Widget build(BuildContext context) {
    print('-BUILDING- SalonList');
    return Container(
      height: 360,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [SearchOptions()]..addAll(
            this.list.map((item) => SalonListItem(item)).toList(),
          ),
      ),
    );
  }
}
