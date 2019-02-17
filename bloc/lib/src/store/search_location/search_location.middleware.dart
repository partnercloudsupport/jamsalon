import 'package:bloc/src/store/_for_epic.index.dart';

class SearchLocationMiddleware {
  final LocationInterface _locationService;
  final PlaceInterface _placeService;

  SearchLocationMiddleware(BlocAPI api)
      : _locationService = api.locationService,
        _placeService = api.placeService;

  Epic<AppState> get epics => combineEpics<AppState>([
        TypedEpic(this._fetchCurrentLocationEpic),
        TypedEpic(this._recentListEpic),
        TypedEpic(this._savedListEpic),
        TypedEpic(this._predictionListEpic),
        TypedEpic(this._fetchCurrentLocationSuccessEpic),
      ]);

  Stream<FetchCurrentLocationSuccessAction> _fetchCurrentLocationEpic(
    Stream<FetchCurrentLocationAction> action,
    EpicStore<AppState> store,
  ) {
    return Observable(action)
        .switchMap((action) => _locationService.getCurrentLocation())
        .map((location) => FetchCurrentLocationSuccessAction(location));
  }

  Stream<FetchRecentListSuccessAction> _recentListEpic(
    Stream<FetchRecentListAction> action,
    EpicStore<AppState> store,
  ) {
    return Observable(action)
        .map((action) => [
              Location(
                name: 'New Perungulathur',
                address:
                    'SSM Nagar,SSM நகர், Alappakam, New Perungalathur, Chennai.',
                geoPoint: GeoPoint(12.8918714, 80.1087996),
              ),
              Location(
                name: 'Vadapalani',
                address:
                    'Sampath Marriage Hall, Pole Star, 1st Main Road, Chennai.',
                geoPoint: GeoPoint(1.0, 1.0),
              ),
              Location(
                name: 'Muthammal Colony',
                address:
                    '4/281, Opp. Panchayat Office, Ettayapuram Road, Muthammal Colony, Thoothukudi.',
                geoPoint: GeoPoint(1.0, 1.0),
              ),
              Location(
                name: 'Porur',
                address: 'No.3, Anna Road, Porur, Chennai.',
                geoPoint: GeoPoint(1.0, 1.0),
              ),
            ])
        .map((list) => FetchRecentListSuccessAction(list));
  }

  Stream<FetchSavedListSuccessAction> _savedListEpic(
    Stream<FetchSavedListAction> action,
    EpicStore<AppState> store,
  ) {
    return Observable(action)
        .map((action) => [
              Location(
                name: 'Home',
                address:
                    'SSM Nagar,SSM நகர், Alappakam, New Perungalathur, Chennai.',
                geoPoint: GeoPoint(12.8918714, 80.1087996),
              ),
              Location(
                name: 'Other',
                address:
                    'Nungambakkam Railway Station, Sowrashtra Nagar, Choolaimedu, Chennai.',
                geoPoint: GeoPoint(13.0663523, 80.2285082),
              ),
              Location(
                name: 'Other',
                address:
                    '4/281, Opp. Panchayat Office, Ettayapuram Road, Muthammal Colony, Thoothukudi.',
                geoPoint: GeoPoint(1.0, 1.0),
              ),
              Location(
                name: 'Other',
                address: '112, Main Road, Porur, Chennai.',
                geoPoint: GeoPoint(1.0, 1.0),
              ),
            ])
        .map((list) => FetchSavedListSuccessAction(list));
  }

  Stream<FetchPredictionListSuccessAction> _predictionListEpic(
    Stream<FetchPredictionListAction> action,
    EpicStore<AppState> store,
  ) {
    return Observable(action)
        .where((action) => action.keyword.length >= 3)
        .switchMap((action) => _placeService.searchByText(
              action.keyword,
              latitude: MapConfig.BIASED_LOCATION_LATITUDE,
              longitude: MapConfig.BIASED_LOCATION_LONGITUDE,
              radius: MapConfig.BIASED_LOCATION_RADIUS,
            ))
        .map((list) => FetchPredictionListSuccessAction(list));
  }

  Stream<SearchSalonsAction> _fetchCurrentLocationSuccessEpic(
    Stream<FetchCurrentLocationSuccessAction> action,
    EpicStore<AppState> store,
  ) {
    return Observable(action)
        .map((action) => SearchSalonsAction(action.location.geoPoint));
  }
}
