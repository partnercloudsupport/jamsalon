// import 'package:redux/redux.dart';

// import '../store/index.dart';

// class CheckInPageViewModel {
//   final Function() initializeCheckIn;

//   CheckInPageViewModel.fromStore(Store<AppState> store)
//       : initializeCheckIn = (() {
//           print('---------- initializing check in');
//           return store.state.salonState.selectedItem?.key ==
//                   store.state.checkInState.item?.salon?.key
//               ? null
//               : store.dispatch(InitializeCheckInAction(
//                   user: store.state.authState.user,
//                   salon: store.state.salonState.selectedItem,
//                 ));
//         });
// }
