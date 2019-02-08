import 'package:flutter/material.dart';

import '../../core/index.dart';
import 'check_in_queue.view.dart';

class CheckInFormSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('[CheckIn] -BUILDING- CheckInFormSummary');
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      width: double.infinity,
      color: Colors.black.withOpacity(0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // CheckInQueue(),
          // SizedBox(height: 20.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              StoreConnectors.selectedServiceList(builder: (vm) {
                return Text('• ${vm.selectedServiceCountText}');
              }),
              StoreConnectors.salonQueue(builder: (vm) {
                return Text(
                    '• You\'ll be placed ${vm.queueLength + 1}th in the queue.');
              }),
              StoreConnectors.salonQueue(builder: (vm) {
                return Text('• You\'re paying Rs.55 via google pay.');
              }),
            ],
          )
        ],
      ),
    );
  }
}
