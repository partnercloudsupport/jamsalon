import '_.imports.dart';

class SalonListItemViewModel {
  final Function(Salon item) select;

  SalonListItemViewModel.fromStore(Store<AppState> store)
      : select =
            ((Salon item) => store.dispatch(SelectSalonAction(item: item)));
}
