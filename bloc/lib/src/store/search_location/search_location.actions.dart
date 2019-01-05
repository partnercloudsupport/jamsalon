import 'package:jam_dart_models/models.dart';

class FetchSavedListAction {
  const FetchSavedListAction();
}

class FetchSavedListSuccessAction {
  final List<Location> list;
  const FetchSavedListSuccessAction(this.list);
}

class FetchRecentListAction {
  const FetchRecentListAction();
}

class FetchRecentListSuccessAction {
  final List<Location> list;
  const FetchRecentListSuccessAction(this.list);
}

class FetchCurrentLocationAction {
  const FetchCurrentLocationAction();
}

class FetchCurrentLocationSuccessAction {
  final Location location;
  const FetchCurrentLocationSuccessAction(this.location);
}

class FetchPredictionListAction {
  final String keyword;
  const FetchPredictionListAction(this.keyword);
}

class FetchPredictionListSuccessAction {
  final List<Location> list;
  const FetchPredictionListSuccessAction(this.list);
}
