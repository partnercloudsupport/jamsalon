class FetchSavedListAction {
  const FetchSavedListAction();
}

class FetchRecentListAction {
  const FetchRecentListAction();
}

class FetchCurrentLocationAction {
  const FetchCurrentLocationAction();
}

class FetchPredictionListAction {
  final String keyword;
  const FetchPredictionListAction(this.keyword);
}
