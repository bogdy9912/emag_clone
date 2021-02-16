import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emag_clone/src/actions/auth/index.dart';
import 'package:emag_clone/src/data/auth_api.dart';
import 'package:emag_clone/src/data/orders_api.dart';
import 'package:emag_clone/src/data/products_api.dart';
import 'package:emag_clone/src/epics/app_epics.dart';
import 'package:emag_clone/src/models/index.dart';
import 'package:emag_clone/src/reducer/reducer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

//import '../../add_product.dart' as main;

Future<Store<AppState>> init() async {
  await Firebase.initializeApp();

//  await main.main();

  final AuthApi _authApi = AuthApi(firestore: FirebaseFirestore.instance, auth: FirebaseAuth.instance);
  final ProductsApi _productsApi = ProductsApi(firestore: FirebaseFirestore.instance);
  final OrdersApi _ordersApi = OrdersApi(firestore: FirebaseFirestore.instance);
  final AppEpics epic = AppEpics(authApi: _authApi, productsApi: _productsApi, ordersApi: _ordersApi);

  return Store<AppState>(
    reducer,
    initialState: AppState.initialState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epic.epics),
    ],
  )..dispatch(const InitializeApp());
}
