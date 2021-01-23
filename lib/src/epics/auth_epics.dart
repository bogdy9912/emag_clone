import 'package:emag_clone/src/actions/auth/index.dart';
import 'package:emag_clone/src/actions/index.dart';
import 'package:emag_clone/src/data/auth_api.dart';
import 'package:emag_clone/src/models/auth/index.dart';
import 'package:emag_clone/src/models/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AuthEpics {
  AuthEpics({@required AuthApi auth})
      : assert(auth != null),
        _auth = auth;

  final AuthApi _auth;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, Login$>(_login),
      TypedEpic<AppState, SignUp$>(_signUp),
      TypedEpic<AppState, ResetPassword$>(_resetPassword),
      TypedEpic<AppState, SignOut$>(_signOut),
    ]);
  }

  Stream<AppAction> _login(Stream<Login$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((Login$ action) => Stream<Login$>.value(action)
            .asyncMap((Login$ event) => _auth.login(email: event.email, password: event.password))
            .map((AppUser event) => Login.successful(event))
            .onErrorReturnWith((dynamic error) => Login.error(error))
            .doOnData(action.response));
  }

  Stream<AppAction> _signUp(Stream<SignUp$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((SignUp$ action) => Stream<SignUp$>.value(action)
            .asyncMap((SignUp$ action) => _auth.signUp(
                email: store.state.auth.info.email,
                password: store.state.auth.info.password,
                displayedName: store.state.auth.info.displayedName))
            .map((AppUser user) => SignUp.successful(user))
            .onErrorReturnWith((dynamic error) => SignUp.error(error))
            .doOnData(action.response));
  }

  Stream<AppAction> _resetPassword(Stream<ResetPassword$> actions, EpicStore<AppState> store) {
    return actions.flatMap((ResetPassword$ action) => Stream<ResetPassword$>.value(action)
        .asyncMap((ResetPassword$ action) => _auth.resetPassword(email: action.email))
        .map((_) => const ResetPassword.successful())
        .onErrorReturnWith((dynamic error) => ResetPassword.error(error)));
  }

  Stream<AppAction> _signOut(Stream<SignOut$> actions, EpicStore<AppState> store) {
    return actions.flatMap((SignOut$ action) => Stream<SignOut$>.value(action)
        .asyncMap((SignOut$ action) => _auth.signOut())
        .map((_) => const SignOut.successful())
        .onErrorReturnWith((dynamic error) => SignOut.error(error)));
  }
}
