import 'package:jamsalon/shared/model/salon.model.dart';

class SearchSalonsAction {
  const SearchSalonsAction();
}

class SearchSalonsSuccessAction {
  final List<Salon> list;

  const SearchSalonsSuccessAction({this.list});
}
