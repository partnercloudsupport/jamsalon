import 'package:flutter/material.dart';
import 'package:jam_flutter_widgets/widgets.dart';

import 'service_list_dialog.view.dart';

class CheckInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('-BUILDING- CheckInPage');
    return JamBottomSheet(
      title: 'Check In',
      shouldAddCancelButton: true,
      actions: [
        RaisedButton(
          color: Theme.of(context).accentColor,
          onPressed: () {},
          child: Text('Check In'),
        ),
      ],
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20.0),
            Text(
              'Queue',
              style: Theme.of(context).textTheme.title,
            ),
            Container(
              height: 50.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, index) => Row(
                      children: <Widget>[
                        index == 7
                            ? JamCircle(
                                diameter: 40.0,
                                color: Colors.orange,
                                child: Container(
                                  child: Text(
                                    (index + 1).toString(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .title
                                        .copyWith(color: Colors.white),
                                  ),
                                  alignment: Alignment.center,
                                ),
                              )
                            : JamCircle(
                                diameter: 30.0,
                                color: Colors.black12,
                                child: Container(
                                  child: Text((index + 1).toString()),
                                  alignment: Alignment.center,
                                ),
                              ),
                        SizedBox(width: 10.0),
                      ],
                    ),
              ),
            ),
            SizedBox(height: 50.0),
            FlatButton(
              onPressed: () => showDialog(
                    context: context,
                    builder: (context) => SelectServiceDialog(),
                  ),
              color: Colors.blueAccent.withOpacity(0.2),
              child: Text(
                'Select Services',
                style: TextStyle(color: Colors.black87),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
