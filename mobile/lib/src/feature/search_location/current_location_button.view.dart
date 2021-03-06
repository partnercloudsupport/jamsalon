import 'package:jamsalon/src/feature/_.imports.dart';

///
/// A button to fetch user's current location.
///
class CurrentLocationButton extends StatelessWidget {
  ///
  /// The view model provides action when pressed.
  ///
  @override
  Widget build(BuildContext context) {
    return StoreConnectors.currentLocationButton(
      builder: (vm) => Container(
            padding: FlutterUiConfig.CURRENT_LOCATION_BUTTON_PADDING,
            child: AppRaisedButtonWithIcon(
              onPressed: vm.fetchCurrentLocation,
              iconData: Icons.gps_fixed,
              label: UiConfig.CURRENT_LOCATION_BUTTON_TEXT,
            ),
          ),
    );
  }
}
