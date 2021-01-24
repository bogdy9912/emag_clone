import 'package:emag_clone/src/actions/index.dart';
import 'package:emag_clone/src/actions/products/index.dart';
import 'package:emag_clone/src/data/products_api.dart';
import 'package:emag_clone/src/models/index.dart';
import 'package:emag_clone/src/models/products/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class ProductsEpics {
  ProductsEpics({@required ProductsApi api})
      : assert(api != null),
        _api = api;

  final ProductsApi _api;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetProducts$>(_getProducts),
    ]);
  }

  Stream<AppAction> _getProducts(Stream<GetProducts$> actions, EpicStore<AppState> store) {

    return actions //
        .flatMap((GetProducts$ action) => Stream<GetProducts$>.value(action)
            .asyncMap((GetProducts$ event) => _api.getProducts())
            .map((List<Product> products) => GetProducts.successful(products))
            .onErrorReturnWith((dynamic error) => GetProducts.error(error)));
  }
}
