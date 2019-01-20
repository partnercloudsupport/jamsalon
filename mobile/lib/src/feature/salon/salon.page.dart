import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../core/store_connectors.dart';
import 'salon.view.dart';

class SalonPage extends StatelessWidget {
  SalonPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('-BUILDING- SalonPage');
    return StoreConnectors.salonPage(
      builder: (vm) => Scaffold(
            backgroundColor: Color(vm.pageColor.value),
            appBar: AppBar(
              brightness: Brightness.dark,
              backgroundColor: Color(vm.pageColor.value),
              elevation: 0.0,
              leading: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  // SystemConfig.setSystemNavigationBarColor(Colors.transparent);
                  Navigator.of(context).pop();
                },
              ),
            ),
            body: Salon(),
          ),
    );
  }
}
