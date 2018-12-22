import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:flutter/services.dart';

class LocationService {
  static Future<PermissionStatus> _getLocationPermission() async {
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

  static Future<GeolocationStatus> _checkGeolocationPermissionStatus(
      {GeolocationPermission locationPermission =
          GeolocationPermission.location}) async {
    final PermissionStatus permissionStatus = await PermissionHandler()
        .checkPermissionStatus(
            _GeolocationStatusConverter.toPermissionGroup(locationPermission));
    print('2');

    return _GeolocationStatusConverter.fromPermissionStatus(permissionStatus);
  }

  static Future<Position> getCurrentLocation() async {
    var position;
    try {
      final Geolocator geolocator = Geolocator()
        ..forceAndroidLocationManager = true;
      position = await geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.bestForNavigation);
    } on PlatformException {
      position = null;
    }
    return position;

    // var geolocator = Geolocator();

    // Position currentLocation = await geolocator.getCurrentPosition(
    //     desiredAccuracy: LocationAccuracy.high);
    // print(currentLocation?.toString());
    // return currentLocation;

    // GeolocationStatus geolocationStatus =
    //     await _checkGeolocationPermissionStatus();

    // print('permission status');
    // print(geolocationStatus.toString());
    // return null;

    // switch (geolocationStatus) {
    //   case GeolocationStatus.denied:
    //     print('DENIED');
    //     await _getLocationPermission().then(
    //       (permission) {
    //         print('THEN');
    //         print(permission.toString());
    //       },
    //       onError: (error) {
    //         print(error.toString());
    //       },
    //     );
    //     return null;
    //   case GeolocationStatus.disabled:
    //     print('DISABLED');
    //     return null;
    //   case GeolocationStatus.granted:
    //     print('GRANTED');
    //     Position currentLocation = await geolocator.getCurrentPosition(
    //         desiredAccuracy: LocationAccuracy.high);
    //     print(currentLocation?.toString());
    //     return currentLocation;
    //   default:
    //     print('DEFAULT');
    //     return null;
    // }
  }
}

enum GeolocationPermission {
  /// Android: Fine and Coarse Location
  /// iOS: CoreLocation (Always and WhenInUse)
  location,

  /// Android: Fine and Coarse Location
  /// iOS: CoreLocation - Always
  locationAlways,

  /// Android: Fine and Coarse Location
  /// iOS: CoreLocation - WhenInUse
  locationWhenInUse,
}

enum GeolocationStatus {
  /// Permission to access the requested feature is denied by the user.
  denied,

  /// The feature is disabled (or not available) on the device.
  disabled,

  /// Permission to access the requested feature is granted by the user.
  granted,

  /// The user granted restricted access to the requested feature (only on iOS).
  restricted,

  /// Permission is in an unknown state
  unknown
}

class _GeolocationStatusConverter {
  static GeolocationStatus fromPermissionStatus(
      PermissionStatus permissionStatus) {
    switch (permissionStatus) {
      case PermissionStatus.denied:
        return GeolocationStatus.denied;
      case PermissionStatus.disabled:
        return GeolocationStatus.disabled;
      case PermissionStatus.granted:
        return GeolocationStatus.granted;
      case PermissionStatus.restricted:
        return GeolocationStatus.restricted;
      default:
        return GeolocationStatus.unknown;
    }
  }

  static PermissionGroup toPermissionGroup(
      GeolocationPermission geolocationPermission) {
    switch (geolocationPermission) {
      case GeolocationPermission.locationAlways:
        return PermissionGroup.locationAlways;
      case GeolocationPermission.locationWhenInUse:
        return PermissionGroup.locationWhenInUse;
      default:
        return PermissionGroup.location;
    }
  }
}
