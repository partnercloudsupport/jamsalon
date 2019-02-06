import 'package:flutter/material.dart';
import 'package:jam_flutter_widgets/widgets.dart';

import '../../core/store_connectors.dart';
import 'service_list_filter.view.dart';
import 'service_list.view.dart';

class SelectServiceDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('[CheckIn] -BUILDING- SelectServiceDialog');
    return AlertDialog(
      title: Text('Select Services'),
      content: Container(
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10.0),
            ServiceListFilter(),
            SizedBox(height: 20.0),
            Expanded(child: ServiceList()),
          ],
        ),
      ),
      actions: <Widget>[
        StoreConnectors.serviceList(
          builder: (vm) => Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: vm.selectedList.length <= 0
                    ? Text('')
                    : Text(
                        vm.selectedList.length.toString() + ' items selected',
                        style: TextStyle(color: Colors.black54),
                      ),
              ),
        ),
        FlatButton(
          child: Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        FlatButton(
          child: Text('Ok'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
