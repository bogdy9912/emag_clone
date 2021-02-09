part of auth_models;

abstract class Cart implements Built<Cart, CartBuilder> {
  factory Cart([void Function(CartBuilder b) updates]) = _$Cart;

  factory Cart.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  Cart._();

  BuiltList<CartItem> get items;

  @nullable
  String get voucher;

  @memoized
  int get totalProducts {
    return items.fold(0, (int sum, CartItem current) => sum + current.quantity);
  }
  @memoized
  double get totalAmount {
    return items.fold(0, (double sum, CartItem current) => sum + current.quantity * current.price??0);
  }

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Cart> get serializer => _$cartSerializer;
}

abstract class CartItem implements Built<CartItem, CartItemBuilder> {
  factory CartItem({@required String productId, @required int quantity,@required double price}) {
    return _$CartItem((CartItemBuilder b) {
      b
        ..productId = productId
        ..quantity = quantity
        ..price = price;

    });
  }

  factory CartItem.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  CartItem._();

  String get productId;

  int get quantity;


  double get price;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<CartItem> get serializer => _$cartItemSerializer;
}
