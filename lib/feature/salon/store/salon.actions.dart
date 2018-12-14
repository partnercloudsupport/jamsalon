import 'package:jamsalon/shared/model/salon.model.dart';

class SearchSalonsAction {
  SearchSalonsAction();
}

class SearchSalonsSuccessAction {
  final List<Salon> list;

  SearchSalonsSuccessAction({this.list});
}
