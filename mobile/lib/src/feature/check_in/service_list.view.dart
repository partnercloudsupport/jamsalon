import 'package:flutter/material.dart';

import '../../core/store_connectors.dart';

class ServiceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('-BUILDING- ServiceList');
    return StoreConnectors.serviceList(
      builder: (vm) => ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: vm.list.length,
            itemBuilder: (context, i) => CheckboxListTile(
                  title: Text(vm.list[i].name),
                  // subtitle: Text(vm.list[i].description ?? ''),
                  onChanged: (selected) {},
                  value: false,
                ),
          ),
    );
  }
}
