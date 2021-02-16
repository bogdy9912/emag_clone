import 'package:emag_clone/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class OrdersContainer extends StatelessWidget {
  const OrdersContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Order>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Order>>(
      builder: builder,
      converter: (Store<AppState> store) => store.state.ordersState.order.toList(),
    );
  }
}
