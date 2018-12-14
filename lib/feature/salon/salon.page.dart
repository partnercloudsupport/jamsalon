import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:jamsalon/feature/salon/salon_search_bar.widget.dart';
import 'package:jamsalon/feature/salon/search_location.widget.dart';
import 'package:jamsalon/feature/salon/store/salon.viewmodel.dart';
import 'package:jamsalon/shared/build_bottom_navigation_bar.function.dart';
import 'package:jamsalon/feature/salon/salon_list.widget.dart';
import 'package:geolocator/geolocator.dart';
import 'package:jamsalon/shared/store/app.state.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:redux/redux.dart';

class SalonPage extends StatefulWidget {
  SalonPage();
  @override
  State<StatefulWidget> createState() {
    return _SalonPageState();
  }
}

class _SalonPageState extends State<SalonPage> {
  Future<PermissionStatus> _getLocationPermission() async {
    final PermissionStatus permission = await PermissionHandler()
        .checkPermissionStatus(PermissionGroup.location);

    if (permission != PermissionStatus.granted &&
        permission != PermissionStatus.disabled) {
      final Map<PermissionGroup, PermissionStatus> permissionStatus =
          await PermissionHandler()
              .requestPermissions(<PermissionGroup>[PermissionGroup.location]);

      return permissionStatus[PermissionGroup.location] ??
          PermissionStatus.unknown;
    } else {
      return permission;
    }
  }

  void checkGps() async {
    var geolocator = Geolocator();

    GeolocationStatus geolocationStatus =
        await geolocator.checkGeolocationPermissionStatus();

    // print(geolocationStatus.toString());

    switch (geolocationStatus) {
      case GeolocationStatus.denied:
        print('DENIED');
        await _getLocationPermission().then(
          (permission) {
            print('THEN');
            print(permission.toString());
            // print(pos);
          },
          onError: (error) {
            print(error.toString());
          },
        );
        break;
      case GeolocationStatus.disabled:
        print('DISABLED');
        break;
      case GeolocationStatus.granted:
        print('GRANTED');
        Position currentLocation = await geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high);
        if (currentLocation != null) {
          print(currentLocation.toString());
        }
        break;
      default:
        print('DEFAULT');
        break;
    }
    return;
  }

  @override
  Widget build(BuildContext context) {
    print('-BUILDING- SalonPage');
    checkGps();
    return StoreConnector<AppState, SalonViewModel>(
      converter: (Store<AppState> store) => SalonViewModel.fromStore(store),
      builder: (BuildContext context, SalonViewModel salonViewModel) =>
          Scaffold(
            bottomNavigationBar: buildBottomNavigationBar(context, 1),
            body: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SalonSearchBar(() => Navigator.pushNamed(context, '/search')),
                  SalonList(salonViewModel.list),
                  SizedBox(height: 50.0),
                ],
              ),
            ),
          ),
    );
  }
}
