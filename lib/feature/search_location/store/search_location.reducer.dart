import 'package:jamsalon/feature/search_location/store/search_location.state.dart';
import 'package:jamsalon/feature/search_location/store/search_location.actions.dart';
import 'package:jamsalon/shared/model/model.dart';

SearchLocationState searchLocationReducer(
    SearchLocationState state, dynamic action) {
  if (action is FetchSavedListAction) {
    return state.copyWith(savedList: [
      Location(
        name: 'Home',
        address:
            'No.20, Near Grace Super Market, 88th Street, Sector 15, Kamarajar Salai, Chennai.',
      ),
      Location(
        name: 'Other',
        address: 'Sampath Marriage Hall, Pole Star, 1st Main Road, Chennai.',
      ),
      Location(
        name: 'Other',
        address:
            '4/281, Opp. Panchayat Office, Ettayapuram Road, Muthammal Colony, Thoothukudi.',
      ),
      Location(
        name: 'Other',
        address: '112, Main Road, Porur, Chennai.',
      ),
    ]);
  } else if (action is FetchRecentListAction) {
    return state.copyWith(recentList: [
      Location(
        name: 'New Perungulathur',
        address:
            'No.20, Near Grace Super Market, 88th Street, Sector 15, Kamarajar Salai, Chennai.',
      ),
      Location(
        name: 'Vadapalani',
        address: 'Sampath Marriage Hall, Pole Star, 1st Main Road, Chennai.',
      ),
      Location(
        name: 'Muthammal Colony',
        address:
            '4/281, Opp. Panchayat Office, Ettayapuram Road, Muthammal Colony, Thoothukudi.',
      ),
      Location(
        name: 'Porur',
        address: 'No.3, Anna Road, Porur, Chennai.',
      ),
    ]);
  } else if (action is FetchPredictionListAction) {
    List<Location> newList = List.from(state.recentList)
      ..addAll(List.from(state.recentList));
    return state.copyWith(
      searchKeyword: action.keyword,
      predictionList: action.keyword.length >= 3
          ? newList
          : List.unmodifiable(<Location>[]),
    );
  } else {
    return state;
  }
}
