import 'package:flutter/material.dart';
import 'package:jamsalon/shared/widget/multiline_assistive_text.widget.dart';

class SearchLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Container c = Container();
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 10.0),
          MultilineAssistiveText(
            width: 200.0,
            texts: [
              'GPS is off.',
              'Showing salons 5 kms around',
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 30.0, top: 10.0),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            constraints: BoxConstraints.loose(Size.fromWidth(200.0)),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColorDark,
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Text(
              'New Perungulathur, Chennai',
              style: Theme.of(context)
                  .textTheme
                  .caption
                  .copyWith(fontStyle: FontStyle.italic),
            ),
          ),
        ],
      ),
    );
  }
}
