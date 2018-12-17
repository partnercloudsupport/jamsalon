import 'package:meta/meta.dart';

class SearchState {
  final String keyword;

  SearchState({@required this.keyword});

  SearchState.initialize() : keyword = null;
}
