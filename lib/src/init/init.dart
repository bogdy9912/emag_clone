import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emag_clone/src/data/auth_api.dart';
import 'package:emag_clone/src/epics/app_epics.dart';
import 'package:emag_clone/src/models/index.dart';
import 'package:emag_clone/src/reducer/reducer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

Future<Store<AppState>> init() async {

  final AuthApi _authApi= AuthApi(firestore: FirebaseFirestore.instance, auth: FirebaseAuth.instance);
  final AppEpics epic = AppEpics(api: _authApi);
  return Store<AppState>(
    reducer,
    initialState: AppState.initialState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epic.epics),
    ],
  );
}
