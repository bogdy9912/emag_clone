part of auth_containers;

class CartContainer extends StatelessWidget {
  const CartContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<Cart> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Cart>(
      converter: (Store<AppState> store) => store.state.auth.user.cart,
      builder: builder,
    );
  }
}
