import 'package:flutter/material.dart';
import 'package:jamsalon/shared/widget/widget.dart';

class SearchLocation extends StatelessWidget {
  const SearchLocation({Key key}) : super(key: key);

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
            textWidgets: [
              Text('GPS is off.'),
              Text('Location set to New Perungulathur, Chennai'),
              Text('Showing 12 salons within 5 km radius'),
            ],
          ),
          Opacity(
            opacity: 0.0,
            child: Container(
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
          ),
        ],
      ),
    );
  }
}
