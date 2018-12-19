import 'package:flutter/material.dart';
import 'package:jamsalon/shared/model/index.dart';

class PredictionListItem extends StatelessWidget {
  final Location item;

  const PredictionListItem({Key key, @required this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.location_on),
      title: Text(this.item.name),
      subtitle: Text(this.item.address),
    );
  }
}
