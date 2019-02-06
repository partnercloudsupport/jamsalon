import 'package:jam_dart_interfaces/interfaces.dart';
import 'package:rxdart/rxdart.dart';
import 'package:redux_epics/redux_epics.dart';

import '../../bloc_api.dart';
import '../../model/index.dart';
import '../../store/index.dart';

class AuthMiddleware {
  final DatabaseInterface _db;
  final AuthInterface _authService;

  AuthMiddleware(BlocAPI api)
      : _db = api.databaseService,
        _authService = api.authService;

  Epic<AppState> get epics => combineEpics<AppState>([
        TypedEpic(_initializeEpic),
        TypedEpic(_registerEpic),
        TypedEpic(_signInEpic),
        TypedEpic(_signInWithGoogleEpic),
        TypedEpic(_signOutEpic),
      ]);

  Stream<dynamic> _initializeEpic(
    Stream<InitializeAuthAction> action,
    EpicStore<AppState> store,
  ) {
    return Observable(action)
        .switchMap((action) => _authService.user)
        .switchMap((user) => user == null
            ? Observable.just(null)
            : _db.forceGet(Tables.user,
                item: user, searchColumn: 'uid', searchKey: user.uid))
        .map((user) => user == null
            ? DeauthenticateSuccessAction()
            : AuthenticateSuccessAction(user));
  }

  Stream<RegisterSuccessAction> _registerEpic(
    Stream<RegisterAction> action,
    EpicStore<AppState> store,
  ) {
    return Observable(action)
        .switchMap((action) => _authService.register(action.credential))
        .map((user) => RegisterSuccessAction());
  }

  Stream<SignInSuccessAction> _signInEpic(
    Stream<SignInAction> action,
    EpicStore<AppState> store,
  ) {
    return Observable(action)
        .switchMap((action) => _authService.signIn(action.credential))
        .map((user) => SignInSuccessAction());
  }

  Stream<SignInSuccessAction> _signInWithGoogleEpic(
    Stream<SignInWithGoogleAction> action,
    EpicStore<AppState> store,
  ) {
    return Observable(action)
        .switchMap((action) => _authService.signInWithGoogle())
        .map((user) => SignInSuccessAction());
  }

  Stream<SignOutSuccessAction> _signOutEpic(
    Stream<SignOutAction> action,
    EpicStore<AppState> store,
  ) {
    return Observable(action)
        .switchMap((action) => _authService.signOut())
        .map((_) => SignOutSuccessAction());
  }
}
