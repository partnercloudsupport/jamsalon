import 'package:flutter/material.dart';

import '../../core/store_connectors.dart';

class ServiceListFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('-BUILDING- ServiceListFilter');
    return StoreConnectors.serviceListFilter(
      builder: (vm) => Container(
            child: Row(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text('Hair'),
                    Checkbox(
                      onChanged: (selected) {
                        vm.filterByScope('hair');
                      },
                      value: vm.filter?.group?.scope?.key == 'hair',
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text('Face'),
                    Checkbox(
                      onChanged: (selected) {
                        vm.filterByScope('face');
                      },
                      value: vm.filter?.group?.scope?.key == 'face',
                    ),
                  ],
                ),
              ],
            ),
          ),
    );
  }
}
