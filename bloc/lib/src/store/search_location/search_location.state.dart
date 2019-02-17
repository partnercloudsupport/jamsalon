import 'package:meta/meta.dart';

import '../../model/_.index.dart';

@immutable
class SearchLocationState {
  final Location selectedLocation;
  final String searchKeyword;
  final List<Location> recentList;
  final List<Location> savedList;
  final List<Location> predictionList;

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
    Location selectedLocation,
    String searchKeyword,
    List<Location> recentList,
    List<Location> savedList,
    List<Location> predictionList,
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
