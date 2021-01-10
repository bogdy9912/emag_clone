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
    ]);
  }

  Stream<AppAction> _login(Stream<Login$> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((Login$ event) => _auth.login(email: event.email, password: event.password))
        .map((AppUser event) => Login.successful(event))
        .onErrorReturnWith((dynamic error) => Login.error(error));
  }
}
