part of products_models;

abstract class Product implements Built<Product, ProductBuilder> {
  factory Product([void Function(ProductBuilder b) updates]) = _$Product;

  factory Product.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  Product._();

  String get id;

  String get description;

  double get price;

  String get category;

  BuiltList<String> get images;

  String get title;

  double get review;

  ProductState get productState;

  BuiltList<String> get searchIndex;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Product> get serializer => _$productSerializer;
}
