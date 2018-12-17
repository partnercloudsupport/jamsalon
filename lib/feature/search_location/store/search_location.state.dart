import 'package:meta/meta.dart';
import 'package:jamsalon/shared/model/model.dart';

@immutable
class SearchLocationState {
  final List<Location> recentList;
  final List<Location> savedList;
  final List<Location> predictionList;
  final bool isRecentListExpanded;
  final bool isSavedListExpanded;

  SearchLocationState({
    @required this.recentList,
    @required this.savedList,
    @required this.predictionList,
    @required this.isRecentListExpanded,
    @required this.isSavedListExpanded,
  });

  SearchLocationState.initialize()
      : recentList = List.unmodifiable(<Location>[]),
        savedList = List.unmodifiable(<Location>[]),
        predictionList = List.unmodifiable(<Location>[]),
        isRecentListExpanded = false,
        isSavedListExpanded = false;

  SearchLocationState copyWith({
    List<Location> recentList,
    List<Location> savedList,
    List<Location> predictionList,
    bool isRecentListExpanded,
    bool isSavedListExpanded,
  }) {
    return SearchLocationState(
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
          this.recentList == other.recentList &&
          this.savedList == other.savedList &&
          this.predictionList == other.predictionList &&
          this.isRecentListExpanded == other.isRecentListExpanded &&
          this.isSavedListExpanded == other.isSavedListExpanded;

  @override
  int get hashCode =>
      this.recentList.hashCode ^
      this.savedList.hashCode ^
      this.predictionList.hashCode ^
      this.isRecentListExpanded.hashCode ^
      this.isSavedListExpanded.hashCode;
}
