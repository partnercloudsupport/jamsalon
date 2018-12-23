import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:jamsalon/shared/model/index.dart';

@immutable
class SearchLocationState {
  final GeoPoint currentLocation;
  final String searchKeyword;
  final List<JamLocation> recentList;
  final List<JamLocation> savedList;
  final List<JamLocation> predictionList;
  final bool isRecentListExpanded;
  final bool isSavedListExpanded;

  const SearchLocationState({
    @required this.currentLocation,
    @required this.searchKeyword,
    @required this.recentList,
    @required this.savedList,
    @required this.predictionList,
    @required this.isRecentListExpanded,
    @required this.isSavedListExpanded,
  });

  SearchLocationState.initialize()
      : currentLocation = null,
        searchKeyword = '',
        recentList = List.unmodifiable(<JamLocation>[]),
        savedList = List.unmodifiable(<JamLocation>[]),
        predictionList = List.unmodifiable(<JamLocation>[]),
        isRecentListExpanded = false,
        isSavedListExpanded = false;

  SearchLocationState copyWith({
    GeoPoint currentLocation,
    String searchKeyword,
    List<JamLocation> recentList,
    List<JamLocation> savedList,
    List<JamLocation> predictionList,
    bool isRecentListExpanded,
    bool isSavedListExpanded,
  }) {
    return SearchLocationState(
      currentLocation: currentLocation ?? this.currentLocation,
      searchKeyword: searchKeyword ?? this.searchKeyword,
      recentList: recentList ?? this.recentList,
      savedList: savedList ?? this.savedList,
      predictionList: predictionList ?? this.predictionList,
      isRecentListExpanded: isRecentListExpanded ?? this.isRecentListExpanded,
      isSavedListExpanded: isSavedListExpanded ?? this.isSavedListExpanded,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SearchLocationState &&
          this.currentLocation == other.currentLocation &&
          this.searchKeyword == other.searchKeyword &&
          this.recentList == other.recentList &&
          this.savedList == other.savedList &&
          this.predictionList == other.predictionList &&
          this.isRecentListExpanded == other.isRecentListExpanded &&
          this.isSavedListExpanded == other.isSavedListExpanded;

  @override
  int get hashCode =>
      this.currentLocation.hashCode ^
      this.searchKeyword.hashCode ^
      this.recentList.hashCode ^
      this.savedList.hashCode ^
      this.predictionList.hashCode ^
      this.isRecentListExpanded.hashCode ^
      this.isSavedListExpanded.hashCode;
}
