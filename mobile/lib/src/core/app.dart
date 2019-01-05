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

  static Store<AppState> get store => JamsalonBloc.store;

  static Future<bool> initialize() async {
    print('[App] App initializing');

    ///
    /// Configurations
    ///
    SystemConfig.configureUi();
    print('[App] System UI Configured');

    ///
    /// [TESTING ONLY] Add Delay
    ///
    await Future.delayed(Duration(seconds: 5), () => print('[Test] Delaying 5 seconds'));

    ///
    /// Initialize Services
    ///
    var databaseService = DatabaseService();
    await databaseService.initialize();
    print('[App] Database initialized');

    ///
    /// Prepare API from Services
    ///
    var api = JamsalonApi(
      databaseService: databaseService,
      locationService: LocationService(),
      placeService: PlaceService(KeyConfig.GOOGLE_MAPS_PLACES_API_KEY),
    );

    ///
    /// Initialize BLoC using API
    ///
    JamsalonBloc.initialize(api: api);
    print('[App] Bloc initialized');

    ///
    /// Return Success
    ///
    return true;
  }
}
