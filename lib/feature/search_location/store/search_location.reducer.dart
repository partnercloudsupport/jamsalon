import 'package:jamsalon/shared/model/index.dart';
import 'package:jamsalon/feature/search_location/store/search_location.state.dart';
import 'package:jamsalon/feature/search_location/store/search_location.actions.dart';

SearchLocationState searchLocationReducer(
    SearchLocationState state, dynamic action) {
  if (action is FetchSavedListAction) {
    return state.copyWith(savedList: [
      JamLocation(
        name: 'Home',
        address:
            'No.20, Near Grace Super Market, 88th Street, Sector 15, Kamarajar Salai, Chennai.',
      ),
      JamLocation(
        name: 'Other',
        address: 'Sampath Marriage Hall, Pole Star, 1st Main Road, Chennai.',
      ),
      JamLocation(
        name: 'Other',
        address:
            '4/281, Opp. Panchayat Office, Ettayapuram Road, Muthammal Colony, Thoothukudi.',
      ),
      JamLocation(
        name: 'Other',
        address: '112, Main Road, Porur, Chennai.',
      ),
    ]);
  } else if (action is FetchRecentListAction) {
    return state.copyWith(recentList: [
      JamLocation(
        name: 'New Perungulathur',
        address:
            'No.20, Near Grace Super Market, 88th Street, Sector 15, Kamarajar Salai, Chennai.',
      ),
      JamLocation(
        name: 'Vadapalani',
        address: 'Sampath Marriage Hall, Pole Star, 1st Main Road, Chennai.',
      ),
      JamLocation(
        name: 'Muthammal Colony',
        address:
            '4/281, Opp. Panchayat Office, Ettayapuram Road, Muthammal Colony, Thoothukudi.',
      ),
      JamLocation(
        name: 'Porur',
        address: 'No.3, Anna Road, Porur, Chennai.',
      ),
    ]);
  } else if (action is FetchPredictionListAction) {
    return state.copyWith(searchKeyword: action.keyword);
  } else if (action is FetchPredictionListSuccessAction) {
    // List<JamLocation> newList = List.from(state.recentList)
    //   ..addAll(List.from(state.recentList));
    return state.copyWith(predictionList: action.list);
  } else {
    return state;
  }
}
