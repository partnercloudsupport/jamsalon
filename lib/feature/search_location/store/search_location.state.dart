import 'package:meta/meta.dart';
import 'package:jamsalon/shared/model/index.dart';

@immutable
class SearchLocationState {
  final String searchKeyword;
  final List<JamLocation> recentList;
  final List<JamLocation> savedList;
  final List<JamLocation> predictionList;
  final bool isRecentListExpanded;
  final bool isSavedListExpanded;

  const SearchLocationState({
    @required this.searchKeyword,
    @required this.recentList,
    @required this.savedList,
    @required this.predictionList,
    @required this.isRecentListExpanded,
    @required this.isSavedListExpanded,
  });

  SearchLocationState.initialize()
      : searchKeyword = '',
        recentList = List.unmodifiable(<JamLocation>[]),
        savedList = List.unmodifiable(<JamLocation>[]),
        predictionList = List.unmodifiable(<JamLocation>[]),
        isRecentListExpanded = false,
        isSavedListExpanded = false;

  SearchLocationState copyWith({
    String searchKeyword,
    List<JamLocation> recentList,
    List<JamLocation> savedList,
    List<JamLocation> predictionList,
    bool isRecentListExpanded,
    bool isSavedListExpanded,
  }) {
    return SearchLocationState(
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
          this.searchKeyword == other.searchKeyword &&
          this.recentList == other.recentList &&
          this.savedList == other.savedList &&
          this.predictionList == other.predictionList &&
          this.isRecentListExpanded == other.isRecentListExpanded &&
          this.isSavedListExpanded == other.isSavedListExpanded;

  @override
  int get hashCode =>
      this.searchKeyword.hashCode ^
      this.recentList.hashCode ^
      this.savedList.hashCode ^
      this.predictionList.hashCode ^
      this.isRecentListExpanded.hashCode ^
      this.isSavedListExpanded.hashCode;
}
