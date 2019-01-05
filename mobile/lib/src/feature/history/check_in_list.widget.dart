import 'package:flutter/material.dart';
import 'package:jamsalon_bloc/jamsalon_bloc.dart';
import 'check_in_list_item.widget.dart';

class CheckInList extends StatelessWidget {
  CheckInList();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CheckInListItem(
          checkIn: CheckIn(
            salon: Salon(name: 'Rockstar Salon', location: 'Nungambakkam'),
            startTime: DateTime.now().subtract(Duration(days: 20)),
          ),
        ),
        CheckInListItem(
          checkIn: CheckIn(
            salon: Salon(name: 'Olivestead', location: 'Navalur'),
            startTime: DateTime.now().subtract(Duration(days: 40)),
          ),
        ),
        CheckInListItem(
          checkIn: CheckIn(
            salon: Salon(name: 'Rockstar Salon', location: 'Nungambakkam'),
            startTime: DateTime.now().subtract(Duration(days: 63)),
          ),
        ),
        CheckInListItem(
          checkIn: CheckIn(
            salon: Salon(name: 'Olivestead', location: 'Navalur'),
            startTime: DateTime.now().subtract(Duration(days: 82)),
          ),
        ),
        CheckInListItem(
          checkIn: CheckIn(
            salon: Salon(name: 'Rockstar Salon', location: 'Nungambakkam'),
            startTime: DateTime.now().subtract(Duration(days: 112)),
          ),
        ),
        CheckInListItem(
          checkIn: CheckIn(
            salon: Salon(name: 'Olivestead', location: 'Navalur'),
            startTime: DateTime.now().subtract(Duration(days: 135)),
          ),
        ),
        CheckInListItem(
          checkIn: CheckIn(
            salon: Salon(name: 'Rockstar Salon', location: 'Nungambakkam'),
            startTime: DateTime.now().subtract(Duration(days: 20)),
          ),
        ),
        CheckInListItem(
          checkIn: CheckIn(
            salon: Salon(name: 'Olivestead', location: 'Navalur'),
            startTime: DateTime.now().subtract(Duration(days: 40)),
          ),
        ),
        CheckInListItem(
          checkIn: CheckIn(
            salon: Salon(name: 'Rockstar Salon', location: 'Nungambakkam'),
            startTime: DateTime.now().subtract(Duration(days: 63)),
          ),
        ),
        CheckInListItem(
          checkIn: CheckIn(
            salon: Salon(name: 'Olivestead', location: 'Navalur'),
            startTime: DateTime.now().subtract(Duration(days: 82)),
          ),
        ),
        CheckInListItem(
          checkIn: CheckIn(
            salon: Salon(name: 'Rockstar Salon', location: 'Nungambakkam'),
            startTime: DateTime.now().subtract(Duration(days: 112)),
          ),
        ),
        CheckInListItem(
          checkIn: CheckIn(
            salon: Salon(name: 'Olivestead', location: 'Navalur'),
            startTime: DateTime.now().subtract(Duration(days: 135)),
          ),
        ),
      ],
    );
  }
}
