import 'package:emag_clone/src/actions/auth/index.dart';
import 'package:emag_clone/src/models/index.dart';
import 'package:emag_clone/src/reducer/auth_reducer.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  _reducer,
  TypedReducer<AppState, SignOutSuccessful>(_signOutSuccessful),
]);

AppState _reducer(AppState state, dynamic action) {
  return state.rebuild((AppStateBuilder b) {
    return b..auth = authReducer(state.auth, action).toBuilder();
  });
}

AppState _signOutSuccessful(AppState state, SignOutSuccessful action) {
  return AppState.initialState();
}
