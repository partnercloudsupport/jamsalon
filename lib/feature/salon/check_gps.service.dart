import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

class CheckGps {
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
}
