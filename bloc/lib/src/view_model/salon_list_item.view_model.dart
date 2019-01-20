import 'package:redux/redux.dart';

import '../model/index.dart';
import '../store/app/index.dart';
import '../store/salon_list/index.dart';

class SalonListItemViewModel {
  final Function(Salon item) select;

  SalonListItemViewModel.fromStore(Store<AppState> store)
      : select = ((Salon item) => store.dispatch(SelectSalonAction(item: item)));
}
