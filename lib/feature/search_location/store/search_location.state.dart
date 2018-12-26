import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:jamsalon/shared/model/index.dart';

@immutable
class SearchLocationState {
  final JamLocation selectedLocation;
  final String searchKeyword;
  final List<JamLocation> recentList;
  final List<JamLocation> savedList;
  final List<JamLocation> predictionList;

  const SearchLocationState({
    @required this.selectedLocation,
    @required this.searchKeyword,
    @required this.recentList,
    @required this.savedList,
    @required this.predictionList,
  });

  SearchLocationState.initialize()
      : selectedLocation = null,
        searchKeyword = '',
        recentList = const [],
        savedList = const [],
        predictionList = const [];

  SearchLocationState copyWith({
    JamLocation selectedLocation,
    String searchKeyword,
    List<JamLocation> recentList,
    List<JamLocation> savedList,
    List<JamLocation> predictionList,
  }) {
    return SearchLocationState(
      selectedLocation: selectedLocation ?? this.selectedLocation,
      searchKeyword: searchKeyword ?? this.searchKeyword,
      recentList: recentList ?? this.recentList,
      savedList: savedList ?? this.savedList,
      predictionList: predictionList ?? this.predictionList,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SearchLocationState &&
          this.selectedLocation == other.selectedLocation &&
          this.searchKeyword == other.searchKeyword &&
          this.recentList == other.recentList &&
          this.savedList == other.savedList &&
          this.predictionList == other.predictionList;

  @override
  int get hashCode =>
      this.selectedLocation.hashCode ^
      this.searchKeyword.hashCode ^
      this.recentList.hashCode ^
      this.savedList.hashCode ^
      this.predictionList.hashCode;
}
