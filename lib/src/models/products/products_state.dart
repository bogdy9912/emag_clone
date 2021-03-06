part of products_models;

abstract class ProductsState implements Built<ProductsState, ProductsStateBuilder> {
  factory ProductsState([void Function(ProductsStateBuilder b) updates]) = _$ProductsState;
  factory ProductsState.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  ProductsState._();

  BuiltList<Product> get products;

  BuiltList<Product> get searchResult;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<ProductsState> get serializer => _$productsStateSerializer;
}
