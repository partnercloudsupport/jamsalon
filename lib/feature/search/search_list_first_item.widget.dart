import 'package:flutter/material.dart';
import 'package:jamsalon/feature/search/search_list_item.widget.dart';

class SearchListFirstItem extends StatelessWidget {
  final String item;
  final String group;

  const SearchListFirstItem(
      {Key key, @required this.item, @required this.group})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 30.0),
        Container(
          margin: EdgeInsets.only(left: 10.0),
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          color: Colors.black12,
          child: Text(
            this.group,
            style: Theme.of(context).textTheme.body2,
          ),
        ),
        SizedBox(height: 10.0),
        SearchListItem(item: item),
      ],
    );
  }
}
