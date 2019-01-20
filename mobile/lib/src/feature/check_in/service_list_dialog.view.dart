import 'package:flutter/material.dart';

import 'service_list_filter.view.dart';
import 'service_list.view.dart';

class SelectServiceDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('-BUILDING- SelectServiceDialog');
    return AlertDialog(
      title: Text('Select Services'),
      content: Container(
        width: double.maxFinite,
        child: Column(
          children: <Widget>[
            ServiceListFilter(),
            Expanded(child: ServiceList()),
          ],
        ),
      ),
      actions: <Widget>[
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
