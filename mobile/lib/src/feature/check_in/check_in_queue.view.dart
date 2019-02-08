import 'package:flutter/material.dart';
import 'package:jam_flutter_widgets/widgets.dart' as jam;

import '../../core/store_connectors.dart';

class CheckInQueue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('[CheckIn] -BUILDING- CheckInQueue');
    return Column(
      children: <Widget>[
        // Row(
        //   children: <Widget>[
        //     Text(
        //       'Queue',
        //       style: Theme.of(context).textTheme.title,
        //     ),
        //     SizedBox(width: 5.0),
        //     StoreConnectors.salonQueue(builder: (vm) {
        //       return Text(
        //         '(${vm.queueSizeText})',
        //         style: Theme.of(context).textTheme.body1.copyWith(
        //               color: Colors.black54,
        //               fontStyle: FontStyle.italic,
        //             ),
        //       );
        //     }),
        //   ],
        // ),
        // SizedBox(height: 10.0),
        StoreConnectors.salon(builder: (vm) {
          return jam.Queue(
            length: vm.item.queueLength + 1,
            position: vm.item.queueLength + 1,
          );
        }),
      ],
    );
  }
}
