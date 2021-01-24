import 'package:emag_clone/src/data/auth_api.dart';
import 'package:emag_clone/src/data/products_api.dart';
import 'package:emag_clone/src/epics/auth_epics.dart';
import 'package:emag_clone/src/epics/products_epics.dart';
import 'package:emag_clone/src/models/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';

class AppEpics {
  AppEpics({@required AuthApi authApi, @required ProductsApi productsApi})
      : assert(authApi != null),
        assert(productsApi != null),
        _authApi = authApi,
        _productsApi = productsApi;

  final AuthApi _authApi;
  final ProductsApi _productsApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      AuthEpics(auth: _authApi).epics,
      ProductsEpics(api: _productsApi).epics,
    ]);
  }
}
