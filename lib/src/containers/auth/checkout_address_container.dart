import 'package:emag_clone/src/models/auth/index.dart';
import 'package:emag_clone/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/src/store.dart';

class CheckoutAddressContainer extends StatelessWidget {
  const CheckoutAddressContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<AddressPoint> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AddressPoint>(
      converter: (Store<AppState> store) => store.state.auth.checkoutAddress,
      builder: builder,
    );
  }
}
