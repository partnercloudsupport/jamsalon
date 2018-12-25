import 'package:flutter/material.dart';
import 'package:jamsalon/core/config/ui.config.dart';

import 'package:jamsalon/shared/widget/index.dart';
import 'current_location_button.controller.dart';

///
/// A button to fetch user's current location.
///
class CurrentLocationButton extends StatelessWidget {
  ///
  /// The view model provides action when pressed.
  ///
  @override
  Widget build(BuildContext context) {
    return CurrentLocationButtonController.storeConnector(
      builder: (CurrentLocationButtonViewModel vm) => Container(
            padding: UiConfig.CURRENT_LOCATION_BUTTON_PADDING,
            child: AppRaisedButtonWithIcon(
              onPressed: vm.fetchCurrentLocation,
              iconData: Icons.gps_fixed,
              label: Text(UiConfig.CURRENT_LOCATION_BUTTON_TEXT),
            ),
          ),
    );
  }
}
