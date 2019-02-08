import 'package:flutter/material.dart';
import 'package:jam_flutter_widgets/widgets.dart' as jam;

import 'check_in_form_summary.view.dart';
import 'select_service_step.view.dart';

class CheckInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('[CheckIn] -BUILDING- CheckInPage');
    return jam.BottomSheet(
      onClosing: () {},
      shouldAddCancelButton: true,
      title: Text('Check In'),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: CheckInFormSummary(),
      ),
      content: SelectServiceStep(),
      actions: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text('Cancel'),
        ),
        FlatButton(
          onPressed: () {},
          child: Text('Next'),
        ),
      ],
    );
  }
}
