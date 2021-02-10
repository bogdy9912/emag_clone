part of products_containers;

class SearchProductsContainer extends StatelessWidget {
  const SearchProductsContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Product>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Product>>(
      converter: (Store<AppState> store) => store.state.productsState.searchResult.asList(),
      builder: builder,
    );
  }
}
