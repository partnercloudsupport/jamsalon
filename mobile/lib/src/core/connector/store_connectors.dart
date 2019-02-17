import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:bloc/bloc.dart';

class StoreConnectors {
  ///
  /// auth
  ///
  static StoreConnector<AppState, AuthViewModel> auth({
    @required Function(AuthViewModel vm) builder,
  }) =>
      StoreConnector(
        converter: (store) => AuthViewModel.fromStore(store),
        builder: (context, vm) => builder(vm),
        // onInit: (store) => store.dispatch(InitializeAuthAction()),
      );

  static StoreConnector<AppState, SignInPageViewModel> signInPage({
    @required Function(SignInPageViewModel vm) builder,
  }) =>
      StoreConnector(
        converter: (store) => SignInPageViewModel.fromStore(store),
        builder: (context, vm) => builder(vm),
      );

  static StoreConnector<AppState, RegisterPageViewModel> registerPage({
    @required Function(RegisterPageViewModel vm) builder,
  }) =>
      StoreConnector(
        converter: (store) => RegisterPageViewModel.fromStore(store),
        builder: (context, vm) => builder(vm),
      );

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

  static StoreConnector<AppState, SalonQueueViewModel> salonQueue({
    @required Function(SalonQueueViewModel vm) builder,
  }) =>
      StoreConnector(
        converter: (store) => SalonQueueViewModel.fromStore(store),
        builder: (context, vm) => builder(vm),
      );

  static StoreConnector<AppState, SalonViewModel> salon({
    @required Function(SalonViewModel vm) builder,
  }) =>
      StoreConnector(
        converter: (store) => SalonViewModel.fromStore(store),
        builder: (context, vm) => builder(vm),
      );

  static StoreConnector<AppState, ShowCheckInPageButtonViewModel>
      showCheckInPageButton({
    @required Function(ShowCheckInPageButtonViewModel vm) builder,
  }) =>
          StoreConnector(
            converter: (store) =>
                ShowCheckInPageButtonViewModel.fromStore(store),
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
  // static StoreConnector<AppState, CheckInPageViewModel> checkInPage({
  //   @required Function(CheckInPageViewModel vm) builder,
  // }) =>
  //     StoreConnector(
  //       converter: (store) => CheckInPageViewModel.fromStore(store),
  //       builder: (context, vm) => builder(vm),
  //       onInitialBuild: (vm) => vm.initializeCheckIn(),
  //       onDidChange: (vm) => vm.initializeCheckIn(),
  //     );

  static StoreConnector<AppState, SelectedServiceListViewModel>
      selectedServiceList({
    @required Function(SelectedServiceListViewModel vm) builder,
  }) =>
          StoreConnector(
            converter: (store) => SelectedServiceListViewModel.fromStore(store),
            builder: (context, vm) => builder(vm),
          );

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
        builder: (context, vm) => builder(vm),
      );

  static StoreConnector<AppState, CheckInButtonViewModel> checkInButton({
    @required Function(CheckInButtonViewModel vm) builder,
  }) =>
      StoreConnector(
        converter: (store) => CheckInButtonViewModel.fromStore(store),
        builder: (context, vm) => builder(vm),
      );
}
