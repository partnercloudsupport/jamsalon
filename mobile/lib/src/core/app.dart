import 'package:flutter/material.dart';
import 'package:jam_dart_services/services.dart';
import 'package:jam_flutter_services/services.dart';
import 'package:jamsalon_bloc/jamsalon_bloc.dart';
import 'package:redux/redux.dart';

import 'config/index.dart';

class App {
  static const String title = 'Jamsalon';

  static final ThemeData theme = appTheme;

  static final Map<String, WidgetBuilder> routes = appRoutes;

  static Store<AppState> get store => MyAppBloc.store;

  static Future<bool> initialize() async {
    print(
        '--------------------------------------------------------------------------------');
    print('[App] App initializing');

    ///
    /// Configurations
    ///
    SystemConfig.configureUi();
    print('[App] System UI Configured');

    ///
    /// [TESTING ONLY] Add Delay
    ///
    // await Future.delayed(
    //   Duration(seconds: FlutterUiConfig.APP_LOAD_DELAY_FOR_TESTING),
    //   () => print(
    //       '[Test] Delaying ${FlutterUiConfig.APP_LOAD_DELAY_FOR_TESTING} seconds'),
    // );

    ///
    /// Prepare API from Services
    ///
    var api = BlocAPI(
      authService: AuthService(),
      databaseService: DatabaseService(),
      locationService: LocationService(),
      placeService: PlaceService(KeyConfig.GOOGLE_MAPS_PLACES_API_KEY),
    );

    ///
    /// Initialize BLoC using API
    ///
    await MyAppBloc.initialize(api: api);
    print('[App] Bloc initialized');

    ///
    /// Return Success
    ///
    return true;
  }
}
