import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:jamsalon_bloc/jamsalon_bloc.dart';

export 'package:jamsalon_bloc/src/config/ui.config.dart';

class StoreConnectors {
  ///
  /// salon_list
  ///
  static StoreConnector<AppState, SalonListViewModel> salonList(
          {@required Function(SalonListViewModel vm) builder}) =>
      StoreConnector(
        converter: (store) => SalonListViewModel.fromStore(store),
        builder: (context, vm) => builder(vm),
      );

  static StoreConnector<AppState, SalonListSearchBarViewModel>
      salonListSearchBar(
              {@required Function(SalonListSearchBarViewModel vm) builder}) =>
          StoreConnector(
            converter: (store) => SalonListSearchBarViewModel.fromStore(store),
            builder: (context, vm) => builder(vm),
          );

  ///
  /// search_location
  ///
  static StoreConnector<AppState, CurrentLocationButtonViewModel>
      currentLocationButton(
              {@required
                  Function(CurrentLocationButtonViewModel vm) builder}) =>
          StoreConnector(
            converter: (store) =>
                CurrentLocationButtonViewModel.fromStore(store),
            builder: (context, vm) => builder(vm),
          );

  static StoreConnector<AppState, PredictionListViewModel> predictionList(
          {@required Function(PredictionListViewModel vm) builder}) =>
      StoreConnector(
        converter: (store) => PredictionListViewModel.fromStore(store),
        builder: (context, vm) => builder(vm),
      );

  static StoreConnector<AppState, RecentListViewModel> recentList(
          {@required Function(RecentListViewModel vm) builder}) =>
      StoreConnector(
        converter: (store) => RecentListViewModel.fromStore(store),
        onInit: (store) => store.dispatch(FetchRecentListAction()),
        builder: (context, vm) => builder(vm),
      );

  static StoreConnector<AppState, SavedListViewModel> savedList(
          {@required Function(SavedListViewModel vm) builder}) =>
      StoreConnector(
        converter: (store) => SavedListViewModel.fromStore(store),
        onInit: (store) => store.dispatch(FetchSavedListAction()),
        builder: (context, vm) => builder(vm),
      );

  static StoreConnector<AppState, SearchLocationContainerViewModel>
      searchLocationContainer(
              {@required
                  Function(SearchLocationContainerViewModel vm) builder}) =>
          StoreConnector(
            converter: (store) =>
                SearchLocationContainerViewModel.fromStore(store),
            builder: (context, vm) => builder(vm),
          );

  static StoreConnector<AppState, SearchLocationListItemViewModel>
      searchLocationListItem(
              {@required
                  Function(SearchLocationListItemViewModel vm) builder}) =>
          StoreConnector(
            converter: (store) =>
                SearchLocationListItemViewModel.fromStore(store),
            builder: (context, vm) => builder(vm),
          );

  static StoreConnector<AppState, SearchLocationSearchBarViewModel>
      searchLocationSearchBar(
              {@required
                  Function(SearchLocationSearchBarViewModel vm) builder}) =>
          StoreConnector(
            converter: (store) =>
                SearchLocationSearchBarViewModel.fromStore(store),
            builder: (context, vm) => builder(vm),
          );
}
