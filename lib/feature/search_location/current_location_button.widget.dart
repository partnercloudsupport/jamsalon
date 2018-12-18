import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:jamsalon/core/config/ui.config.dart';
import 'package:jamsalon/shared/widget/widget.dart';
import 'package:redux/redux.dart';
import 'package:jamsalon/shared/store/app.store.dart';
import 'package:jamsalon/feature/search_location/store/search_location.store.dart';

///
/// A button to fetch user's current location.
///
class CurrentLocationButton extends StatelessWidget {
  ///
  /// Creates the button
  ///
  const CurrentLocationButton({Key key}) : super(key: key);

  ///
  /// The view model provides action when pressed.
  ///
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, CurrentLocationViewModel>(
      converter: (Store<AppState> store) =>
          CurrentLocationViewModel.fromStore(store),
      builder: (BuildContext context, CurrentLocationViewModel vm) => Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: AppRaisedButtonWithIcon(
              onPressed: vm.fetchCurrentLocation,
              iconData: Icons.gps_fixed,
              label: Text(UiConfig.CURRENT_LOCATION_BUTTON_TEXT),
            ),
          ),
    );
  }
}
