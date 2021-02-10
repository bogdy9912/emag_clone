part of auth_containers;

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<String>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<String>>(
      builder: builder,
      converter: (Store<AppState> store) => store.state.productsState.products.map((Product b) => b.category).toList(),
    );
  }
}
