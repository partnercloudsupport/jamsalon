import 'package:flutter/material.dart';
import 'package:jamsalon/shared/widget/conditionally_switch_container.widget.dart';
import 'package:jamsalon/feature/search/search_list_item.widget.dart';
import 'package:jamsalon/feature/search/search_list_first_item.widget.dart';

class SearchList extends StatelessWidget {
  final List<Map<String, String>> list = [
    {'item': 'New Perungulathur, Chennai', 'group': 'LOCATION'},
    {'item': 'Tambaram, Chennai', 'group': 'LOCATION'},
    {'item': 'Medavakkam, Chennai', 'group': 'LOCATION'},
    {'item': 'Nungambakkam, Chennai', 'group': 'LOCATION'},
    {'item': 'Beach Road, Chennai', 'group': 'LOCATION'},
    {'item': 'Rockstar salon', 'group': 'SALON'},
    {'item': 'Olivestead', 'group': 'SALON'},
  ];

  @override
  Widget build(BuildContext context) {
    Map<String, String> previousItem;
    return ListView(
      children: this.list.map((item) {
        bool newGroup =
            (previousItem == null) || (previousItem['group'] != item['group']);
        previousItem = item;
        return ConditionallySwitchContainer(
          condition: newGroup,
          child1: SearchListFirstItem(item: item['item'], group: item['group']),
          child2: SearchListItem(item: item['item']),
        );
      }).toList(),
    );
  }
}
