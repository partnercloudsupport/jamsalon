import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:jamsalon/shared/model/index.dart';

class FetchSavedListAction {
  const FetchSavedListAction();
}

class FetchSavedListSuccessAction {
  final List<JamLocation> list;
  const FetchSavedListSuccessAction(this.list);
}

class FetchRecentListAction {
  const FetchRecentListAction();
}

class FetchRecentListSuccessAction {
  final List<JamLocation> list;
  const FetchRecentListSuccessAction(this.list);
}

class FetchCurrentLocationAction {
  const FetchCurrentLocationAction();
}

class FetchCurrentLocationSuccessAction {
  final JamLocation location;
  const FetchCurrentLocationSuccessAction(this.location);
}

class FetchPredictionListAction {
  final String keyword;
  const FetchPredictionListAction(this.keyword);
}

class FetchPredictionListSuccessAction {
  final List<JamLocation> list;
  const FetchPredictionListSuccessAction(this.list);
}
