import 'package:jamsalon/src/feature/_.imports.dart';

class CheckInFormSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('[CheckIn] -BUILDING- CheckInFormSummary');
    return Container(
      width: double.infinity,
      height: 120.0,
      color: Colors.black.withOpacity(0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          LinearProgressIndicator(value: 0.3),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
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
            ),
          )
        ],
      ),
    );
  }
}
