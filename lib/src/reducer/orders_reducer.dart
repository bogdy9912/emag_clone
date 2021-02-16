import 'package:built_collection/built_collection.dart';
import 'package:emag_clone/src/actions/orders/index.dart';
import 'package:emag_clone/src/models/index.dart';
import 'package:redux/redux.dart';

Reducer<OrdersState> ordersReducer = combineReducers(<Reducer<OrdersState>>[
  TypedReducer<OrdersState, GetOrdersSuccessful>(_getOrdersSuccessful),
  TypedReducer<OrdersState, UpdateOrderInfo$>(_updateOrderInfo),
]);

OrdersState _getOrdersSuccessful(OrdersState state, GetOrdersSuccessful action) {
  return state.rebuild((OrdersStateBuilder b) => b.order = ListBuilder<Order>(action.orders));
}

OrdersState _updateOrderInfo(OrdersState state, UpdateOrderInfo$ action) {
  return state.rebuild((OrdersStateBuilder b) {
    if (action.total != null) {
      b.info.total = action.total;
    } else if (action.methodOfPayment != null) {
      b.info.methodOfPayment = action.methodOfPayment;
    } else if (action.products != null) {
      b.info.products = ListBuilder<CartItem>(action.products);
    } else if (action.address != null) {
      b.info.address = action.address.toBuilder();
    } else {
      b.info = OrderInfo().toBuilder();
    }
  });
}
