import 'package:flutter/material.dart';

import 'package:bloc/models.dart' as model show CheckIn, Salon;
import 'check_in_list_item.widget.dart';

class CheckInList extends StatelessWidget {
  CheckInList();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CheckInListItem(
          checkIn: model.CheckIn(
            salon:
                model.Salon(name: 'Rockstar Salon', location: 'Nungambakkam'),
            startTime: DateTime.now().subtract(Duration(days: 20)),
          ),
        ),
        CheckInListItem(
          checkIn: model.CheckIn(
            salon: model.Salon(name: 'Olivestead', location: 'Navalur'),
            startTime: DateTime.now().subtract(Duration(days: 40)),
          ),
        ),
        CheckInListItem(
          checkIn: model.CheckIn(
            salon:
                model.Salon(name: 'Rockstar Salon', location: 'Nungambakkam'),
            startTime: DateTime.now().subtract(Duration(days: 63)),
          ),
        ),
        CheckInListItem(
          checkIn: model.CheckIn(
            salon: model.Salon(name: 'Olivestead', location: 'Navalur'),
            startTime: DateTime.now().subtract(Duration(days: 82)),
          ),
        ),
        CheckInListItem(
          checkIn: model.CheckIn(
            salon:
                model.Salon(name: 'Rockstar Salon', location: 'Nungambakkam'),
            startTime: DateTime.now().subtract(Duration(days: 112)),
          ),
        ),
        CheckInListItem(
          checkIn: model.CheckIn(
            salon: model.Salon(name: 'Olivestead', location: 'Navalur'),
            startTime: DateTime.now().subtract(Duration(days: 135)),
          ),
        ),
        CheckInListItem(
          checkIn: model.CheckIn(
            salon:
                model.Salon(name: 'Rockstar Salon', location: 'Nungambakkam'),
            startTime: DateTime.now().subtract(Duration(days: 20)),
          ),
        ),
        CheckInListItem(
          checkIn: model.CheckIn(
            salon: model.Salon(name: 'Olivestead', location: 'Navalur'),
            startTime: DateTime.now().subtract(Duration(days: 40)),
          ),
        ),
        CheckInListItem(
          checkIn: model.CheckIn(
            salon:
                model.Salon(name: 'Rockstar Salon', location: 'Nungambakkam'),
            startTime: DateTime.now().subtract(Duration(days: 63)),
          ),
        ),
        CheckInListItem(
          checkIn: model.CheckIn(
            salon: model.Salon(name: 'Olivestead', location: 'Navalur'),
            startTime: DateTime.now().subtract(Duration(days: 82)),
          ),
        ),
        CheckInListItem(
          checkIn: model.CheckIn(
            salon:
                model.Salon(name: 'Rockstar Salon', location: 'Nungambakkam'),
            startTime: DateTime.now().subtract(Duration(days: 112)),
          ),
        ),
        CheckInListItem(
          checkIn: model.CheckIn(
            salon: model.Salon(name: 'Olivestead', location: 'Navalur'),
            startTime: DateTime.now().subtract(Duration(days: 135)),
          ),
        ),
      ],
    );
  }
}
