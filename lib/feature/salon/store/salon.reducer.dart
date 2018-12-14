import 'package:flutter/material.dart';
import 'package:jamsalon/feature/salon/store/salon.actions.dart';
import 'package:jamsalon/feature/salon/store/salon.state.dart';
import 'package:jamsalon/shared/model/salon.model.dart';

SalonState salonReducer(SalonState state, action) {
  if (action is SearchSalonsAction) {
    return SalonState(list: [
      Salon(
        name: 'Rockstar Salon',
        location: 'Nungambakkam',
        color: Color.fromRGBO(240, 86, 93, 1.0),
        photoPath: 'assets/images/salon_1.jpg',
        isOpen: true,
      ),
      Salon(
        name: 'Olivestead',
        location: 'Navalur',
        color: Color.fromRGBO(70, 76, 155, 1.0),
        photoPath: 'assets/images/salon_2.jpg',
        isOpen: true,
      ),
      Salon(
        name: 'Naturals',
        location: 'Medavakkam',
        color: Color.fromRGBO(172, 129, 204, 1.0),
        photoPath: 'assets/images/salon_3.jpg',
      ),
    ]);
  }
  return state;
}
