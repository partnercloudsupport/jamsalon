import 'package:jamsalon/shared/model/index.dart';

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

class FetchPredictionListSuccessAction {
  final List<JamLocation> list;
  const FetchPredictionListSuccessAction(this.list);
}
