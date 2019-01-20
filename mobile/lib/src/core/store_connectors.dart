import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:jamsalon_bloc/jamsalon_bloc.dart';

export 'package:jamsalon_bloc/src/config/ui.config.dart';

class StoreConnectors {
  ///
  /// salon_list
  ///
  static StoreConnector<AppState, SalonListViewModel> salonList({
    @required Function(SalonListViewModel vm) builder,
  }) =>
      StoreConnector(
        converter: (store) => SalonListViewModel.fromStore(store),
        builder: (context, vm) => builder(vm),
        onInit: (store) {
          store.dispatch(FetchServiceScopeListAction());
          store.dispatch(FetchServiceGroupListAction());
        },
      );

  static StoreConnector<AppState, SalonListItemViewModel> salonListItem({
    @required Function(SalonListItemViewModel vm) builder,
  }) =>
      StoreConnector(
        converter: (store) => SalonListItemViewModel.fromStore(store),
        builder: (context, vm) => builder(vm),
      );

  static StoreConnector<AppState, SalonListSearchBarViewModel>
      salonListSearchBar({
    @required Function(SalonListSearchBarViewModel vm) builder,
  }) =>
          StoreConnector(
            converter: (store) => SalonListSearchBarViewModel.fromStore(store),
            builder: (context, vm) => builder(vm),
          );

  static StoreConnector<AppState, SalonPageViewModel> salonPage({
    @required Function(SalonPageViewModel vm) builder,
  }) =>
      StoreConnector(
        converter: (store) => SalonPageViewModel.fromStore(store),
        builder: (context, vm) {
          // SystemConfig.setSystemNavigationBarColor(
          //   Color(vm.pageColor.value),
          //   iconBrightness: Brightness.light,
          // );
          return builder(vm);
        },
      );

  static StoreConnector<AppState, SalonViewModel> salon({
    @required Function(SalonViewModel vm) builder,
  }) =>
      StoreConnector(
        converter: (store) => SalonViewModel.fromStore(store),
        builder: (context, vm) => builder(vm),
      );

  ///
  /// search_location
  ///
  static StoreConnector<AppState, CurrentLocationButtonViewModel>
      currentLocationButton({
    @required Function(CurrentLocationButtonViewModel vm) builder,
  }) =>
          StoreConnector(
            converter: (store) =>
                CurrentLocationButtonViewModel.fromStore(store),
            builder: (context, vm) => builder(vm),
          );

  static StoreConnector<AppState, PredictionListViewModel> predictionList({
    @required Function(PredictionListViewModel vm) builder,
  }) =>
      StoreConnector(
        converter: (store) => PredictionListViewModel.fromStore(store),
        builder: (context, vm) => builder(vm),
      );

  static StoreConnector<AppState, RecentListViewModel> recentList({
    @required Function(RecentListViewModel vm) builder,
  }) =>
      StoreConnector(
        converter: (store) => RecentListViewModel.fromStore(store),
        builder: (context, vm) => builder(vm),
        onInit: (store) => store.dispatch(FetchRecentListAction()),
      );

  static StoreConnector<AppState, SavedListViewModel> savedList({
    @required Function(SavedListViewModel vm) builder,
  }) =>
      StoreConnector(
        converter: (store) => SavedListViewModel.fromStore(store),
        builder: (context, vm) => builder(vm),
        onInit: (store) => store.dispatch(FetchSavedListAction()),
      );

  static StoreConnector<AppState, SearchLocationContainerViewModel>
      searchLocationContainer({
    @required Function(SearchLocationContainerViewModel vm) builder,
  }) =>
          StoreConnector(
            converter: (store) =>
                SearchLocationContainerViewModel.fromStore(store),
            builder: (context, vm) => builder(vm),
          );

  static StoreConnector<AppState, SearchLocationListItemViewModel>
      searchLocationListItem({
    @required Function(SearchLocationListItemViewModel vm) builder,
  }) =>
          StoreConnector(
            converter: (store) =>
                SearchLocationListItemViewModel.fromStore(store),
            builder: (context, vm) => builder(vm),
          );

  static StoreConnector<AppState, SearchLocationSearchBarViewModel>
      searchLocationSearchBar({
    @required Function(SearchLocationSearchBarViewModel vm) builder,
  }) =>
          StoreConnector(
            converter: (store) =>
                SearchLocationSearchBarViewModel.fromStore(store),
            builder: (context, vm) => builder(vm),
          );

  ///
  /// check_in
  ///
  static StoreConnector<AppState, ServiceListFilterViewModel>
      serviceListFilter({
    @required Function(ServiceListFilterViewModel vm) builder,
  }) =>
          StoreConnector(
            converter: (store) => ServiceListFilterViewModel.fromStore(store),
            builder: (context, vm) => builder(vm),
            onInit: (store) => store.dispatch(FetchServiceListAction()),
          );

  static StoreConnector<AppState, ServiceListViewModel> serviceList({
    @required Function(ServiceListViewModel vm) builder,
  }) =>
      StoreConnector(
        converter: (store) => ServiceListViewModel.fromStore(store),
        builder: (context, vm) {
          print(vm.list.length);
          return builder(vm);
        },
      );
}
