import 'package:flutter/material.dart';

import '../../core/store_connectors.dart';
import 'service_list_group_header.widget.dart';

class ServiceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('[CheckIn] -BUILDING- ServiceList');
    return StoreConnectors.serviceList(
      builder: (vm) => ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: vm.list.length,
            itemBuilder: (context, i) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    vm.list[i].isFirstItem
                        ? ServiceListGroupHeader(text: vm.list[i].group?.name)
                        : Container(color: Colors.red),
                    CheckboxListTile(
                      title: Text(vm.list[i].name),
                      onChanged: (selected) =>
                          vm.setSelection(vm.list[i], selected),
                      value: vm.isSelected(vm.list[i]),
                    ),
                  ],
                ),
          ),
    );
  }
}
