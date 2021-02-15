// GENERATED CODE - DO NOT MODIFY BY HAND

part of auth_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppUser> _$appUserSerializer = new _$AppUserSerializer();
Serializer<AuthState> _$authStateSerializer = new _$AuthStateSerializer();
Serializer<Cart> _$cartSerializer = new _$CartSerializer();
Serializer<CartItem> _$cartItemSerializer = new _$CartItemSerializer();
Serializer<RegistrationInfo> _$registrationInfoSerializer =
    new _$RegistrationInfoSerializer();
Serializer<AddressPoint> _$addressPointSerializer =
    new _$AddressPointSerializer();

class _$AppUserSerializer implements StructuredSerializer<AppUser> {
  @override
  final Iterable<Type> types = const [AppUser, _$AppUser];
  @override
  final String wireName = 'AppUser';

  @override
  Iterable<Object> serialize(Serializers serializers, AppUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'displayedName',
      serializers.serialize(object.displayedName,
          specifiedType: const FullType(String)),
      'favorites',
      serializers.serialize(object.favorites,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'addresses',
      serializers.serialize(object.addresses,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(AddressPoint)])),
    ];
    if (object.photoUrl != null) {
      result
        ..add('photoUrl')
        ..add(serializers.serialize(object.photoUrl,
            specifiedType: const FullType(String)));
    }
    if (object.cart != null) {
      result
        ..add('cart')
        ..add(serializers.serialize(object.cart,
            specifiedType: const FullType(Cart)));
    }
    if (object.telephone != null) {
      result
        ..add('telephone')
        ..add(serializers.serialize(object.telephone,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AppUser deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'displayedName':
          result.displayedName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photoUrl':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cart':
          result.cart.replace(serializers.deserialize(value,
              specifiedType: const FullType(Cart)) as Cart);
          break;
        case 'favorites':
          result.favorites.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'telephone':
          result.telephone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'addresses':
          result.addresses.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(AddressPoint)
              ])));
          break;
      }
    }

    return result.build();
  }
}

class _$AuthStateSerializer implements StructuredSerializer<AuthState> {
  @override
  final Iterable<Type> types = const [AuthState, _$AuthState];
  @override
  final String wireName = 'AuthState';

  @override
  Iterable<Object> serialize(Serializers serializers, AuthState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'info',
      serializers.serialize(object.info,
          specifiedType: const FullType(RegistrationInfo)),
    ];
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(AppUser)));
    }
    if (object.isLoading != null) {
      result
        ..add('isLoading')
        ..add(serializers.serialize(object.isLoading,
            specifiedType: const FullType(bool)));
    }
    if (object.checkoutAddress != null) {
      result
        ..add('checkoutAddress')
        ..add(serializers.serialize(object.checkoutAddress,
            specifiedType: const FullType(AddressPoint)));
    }
    return result;
  }

  @override
  AuthState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(AppUser)) as AppUser);
          break;
        case 'info':
          result.info.replace(serializers.deserialize(value,
                  specifiedType: const FullType(RegistrationInfo))
              as RegistrationInfo);
          break;
        case 'isLoading':
          result.isLoading = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'checkoutAddress':
          result.checkoutAddress.replace(serializers.deserialize(value,
              specifiedType: const FullType(AddressPoint)) as AddressPoint);
          break;
      }
    }

    return result.build();
  }
}

class _$CartSerializer implements StructuredSerializer<Cart> {
  @override
  final Iterable<Type> types = const [Cart, _$Cart];
  @override
  final String wireName = 'Cart';

  @override
  Iterable<Object> serialize(Serializers serializers, Cart object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'items',
      serializers.serialize(object.items,
          specifiedType:
              const FullType(BuiltList, const [const FullType(CartItem)])),
    ];
    if (object.voucher != null) {
      result
        ..add('voucher')
        ..add(serializers.serialize(object.voucher,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Cart deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CartBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CartItem)]))
              as BuiltList<Object>);
          break;
        case 'voucher':
          result.voucher = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CartItemSerializer implements StructuredSerializer<CartItem> {
  @override
  final Iterable<Type> types = const [CartItem, _$CartItem];
  @override
  final String wireName = 'CartItem';

  @override
  Iterable<Object> serialize(Serializers serializers, CartItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'productId',
      serializers.serialize(object.productId,
          specifiedType: const FullType(String)),
      'quantity',
      serializers.serialize(object.quantity,
          specifiedType: const FullType(int)),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  CartItem deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CartItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'productId':
          result.productId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$RegistrationInfoSerializer
    implements StructuredSerializer<RegistrationInfo> {
  @override
  final Iterable<Type> types = const [RegistrationInfo, _$RegistrationInfo];
  @override
  final String wireName = 'RegistrationInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, RegistrationInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.displayedName != null) {
      result
        ..add('displayedName')
        ..add(serializers.serialize(object.displayedName,
            specifiedType: const FullType(String)));
    }
    if (object.password != null) {
      result
        ..add('password')
        ..add(serializers.serialize(object.password,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  RegistrationInfo deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RegistrationInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'displayedName':
          result.displayedName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AddressPointSerializer implements StructuredSerializer<AddressPoint> {
  @override
  final Iterable<Type> types = const [AddressPoint, _$AddressPoint];
  @override
  final String wireName = 'AddressPoint';

  @override
  Iterable<Object> serialize(Serializers serializers, AddressPoint object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'contactName',
      serializers.serialize(object.contactName,
          specifiedType: const FullType(String)),
      'contactPhone',
      serializers.serialize(object.contactPhone,
          specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(String)),
      'town',
      serializers.serialize(object.town, specifiedType: const FullType(String)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AddressPoint deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddressPointBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contactName':
          result.contactName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contactPhone':
          result.contactPhone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'town':
          result.town = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AppUser extends AppUser {
  @override
  final String uid;
  @override
  final String email;
  @override
  final String displayedName;
  @override
  final String photoUrl;
  @override
  final Cart cart;
  @override
  final BuiltList<String> favorites;
  @override
  final String telephone;
  @override
  final BuiltMap<String, AddressPoint> addresses;

  factory _$AppUser([void Function(AppUserBuilder) updates]) =>
      (new AppUserBuilder()..update(updates)).build();

  _$AppUser._(
      {this.uid,
      this.email,
      this.displayedName,
      this.photoUrl,
      this.cart,
      this.favorites,
      this.telephone,
      this.addresses})
      : super._() {
    if (uid == null) {
      throw new BuiltValueNullFieldError('AppUser', 'uid');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('AppUser', 'email');
    }
    if (displayedName == null) {
      throw new BuiltValueNullFieldError('AppUser', 'displayedName');
    }
    if (favorites == null) {
      throw new BuiltValueNullFieldError('AppUser', 'favorites');
    }
    if (addresses == null) {
      throw new BuiltValueNullFieldError('AppUser', 'addresses');
    }
  }

  @override
  AppUser rebuild(void Function(AppUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppUserBuilder toBuilder() => new AppUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppUser &&
        uid == other.uid &&
        email == other.email &&
        displayedName == other.displayedName &&
        photoUrl == other.photoUrl &&
        cart == other.cart &&
        favorites == other.favorites &&
        telephone == other.telephone &&
        addresses == other.addresses;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, uid.hashCode), email.hashCode),
                            displayedName.hashCode),
                        photoUrl.hashCode),
                    cart.hashCode),
                favorites.hashCode),
            telephone.hashCode),
        addresses.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppUser')
          ..add('uid', uid)
          ..add('email', email)
          ..add('displayedName', displayedName)
          ..add('photoUrl', photoUrl)
          ..add('cart', cart)
          ..add('favorites', favorites)
          ..add('telephone', telephone)
          ..add('addresses', addresses))
        .toString();
  }
}

class AppUserBuilder implements Builder<AppUser, AppUserBuilder> {
  _$AppUser _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _displayedName;
  String get displayedName => _$this._displayedName;
  set displayedName(String displayedName) =>
      _$this._displayedName = displayedName;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  CartBuilder _cart;
  CartBuilder get cart => _$this._cart ??= new CartBuilder();
  set cart(CartBuilder cart) => _$this._cart = cart;

  ListBuilder<String> _favorites;
  ListBuilder<String> get favorites =>
      _$this._favorites ??= new ListBuilder<String>();
  set favorites(ListBuilder<String> favorites) => _$this._favorites = favorites;

  String _telephone;
  String get telephone => _$this._telephone;
  set telephone(String telephone) => _$this._telephone = telephone;

  MapBuilder<String, AddressPoint> _addresses;
  MapBuilder<String, AddressPoint> get addresses =>
      _$this._addresses ??= new MapBuilder<String, AddressPoint>();
  set addresses(MapBuilder<String, AddressPoint> addresses) =>
      _$this._addresses = addresses;

  AppUserBuilder();

  AppUserBuilder get _$this {
    if (_$v != null) {
      _uid = _$v.uid;
      _email = _$v.email;
      _displayedName = _$v.displayedName;
      _photoUrl = _$v.photoUrl;
      _cart = _$v.cart?.toBuilder();
      _favorites = _$v.favorites?.toBuilder();
      _telephone = _$v.telephone;
      _addresses = _$v.addresses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppUser other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppUser;
  }

  @override
  void update(void Function(AppUserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppUser build() {
    _$AppUser _$result;
    try {
      _$result = _$v ??
          new _$AppUser._(
              uid: uid,
              email: email,
              displayedName: displayedName,
              photoUrl: photoUrl,
              cart: _cart?.build(),
              favorites: favorites.build(),
              telephone: telephone,
              addresses: addresses.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'cart';
        _cart?.build();
        _$failedField = 'favorites';
        favorites.build();

        _$failedField = 'addresses';
        addresses.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AuthState extends AuthState {
  @override
  final AppUser user;
  @override
  final RegistrationInfo info;
  @override
  final bool isLoading;
  @override
  final AddressPoint checkoutAddress;

  factory _$AuthState([void Function(AuthStateBuilder) updates]) =>
      (new AuthStateBuilder()..update(updates)).build();

  _$AuthState._({this.user, this.info, this.isLoading, this.checkoutAddress})
      : super._() {
    if (info == null) {
      throw new BuiltValueNullFieldError('AuthState', 'info');
    }
  }

  @override
  AuthState rebuild(void Function(AuthStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthStateBuilder toBuilder() => new AuthStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthState &&
        user == other.user &&
        info == other.info &&
        isLoading == other.isLoading &&
        checkoutAddress == other.checkoutAddress;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, user.hashCode), info.hashCode), isLoading.hashCode),
        checkoutAddress.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthState')
          ..add('user', user)
          ..add('info', info)
          ..add('isLoading', isLoading)
          ..add('checkoutAddress', checkoutAddress))
        .toString();
  }
}

class AuthStateBuilder implements Builder<AuthState, AuthStateBuilder> {
  _$AuthState _$v;

  AppUserBuilder _user;
  AppUserBuilder get user => _$this._user ??= new AppUserBuilder();
  set user(AppUserBuilder user) => _$this._user = user;

  RegistrationInfoBuilder _info;
  RegistrationInfoBuilder get info =>
      _$this._info ??= new RegistrationInfoBuilder();
  set info(RegistrationInfoBuilder info) => _$this._info = info;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  AddressPointBuilder _checkoutAddress;
  AddressPointBuilder get checkoutAddress =>
      _$this._checkoutAddress ??= new AddressPointBuilder();
  set checkoutAddress(AddressPointBuilder checkoutAddress) =>
      _$this._checkoutAddress = checkoutAddress;

  AuthStateBuilder();

  AuthStateBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user?.toBuilder();
      _info = _$v.info?.toBuilder();
      _isLoading = _$v.isLoading;
      _checkoutAddress = _$v.checkoutAddress?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuthState;
  }

  @override
  void update(void Function(AuthStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthState build() {
    _$AuthState _$result;
    try {
      _$result = _$v ??
          new _$AuthState._(
              user: _user?.build(),
              info: info.build(),
              isLoading: isLoading,
              checkoutAddress: _checkoutAddress?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'info';
        info.build();

        _$failedField = 'checkoutAddress';
        _checkoutAddress?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AuthState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Cart extends Cart {
  @override
  final BuiltList<CartItem> items;
  @override
  final String voucher;
  int __totalProducts;
  double __totalAmount;

  factory _$Cart([void Function(CartBuilder) updates]) =>
      (new CartBuilder()..update(updates)).build();

  _$Cart._({this.items, this.voucher}) : super._() {
    if (items == null) {
      throw new BuiltValueNullFieldError('Cart', 'items');
    }
  }

  @override
  int get totalProducts => __totalProducts ??= super.totalProducts;

  @override
  double get totalAmount => __totalAmount ??= super.totalAmount;

  @override
  Cart rebuild(void Function(CartBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartBuilder toBuilder() => new CartBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Cart && items == other.items && voucher == other.voucher;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, items.hashCode), voucher.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Cart')
          ..add('items', items)
          ..add('voucher', voucher))
        .toString();
  }
}

class CartBuilder implements Builder<Cart, CartBuilder> {
  _$Cart _$v;

  ListBuilder<CartItem> _items;
  ListBuilder<CartItem> get items =>
      _$this._items ??= new ListBuilder<CartItem>();
  set items(ListBuilder<CartItem> items) => _$this._items = items;

  String _voucher;
  String get voucher => _$this._voucher;
  set voucher(String voucher) => _$this._voucher = voucher;

  CartBuilder();

  CartBuilder get _$this {
    if (_$v != null) {
      _items = _$v.items?.toBuilder();
      _voucher = _$v.voucher;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Cart other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Cart;
  }

  @override
  void update(void Function(CartBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Cart build() {
    _$Cart _$result;
    try {
      _$result = _$v ?? new _$Cart._(items: items.build(), voucher: voucher);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Cart', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CartItem extends CartItem {
  @override
  final String productId;
  @override
  final int quantity;
  @override
  final double price;

  factory _$CartItem([void Function(CartItemBuilder) updates]) =>
      (new CartItemBuilder()..update(updates)).build();

  _$CartItem._({this.productId, this.quantity, this.price}) : super._() {
    if (productId == null) {
      throw new BuiltValueNullFieldError('CartItem', 'productId');
    }
    if (quantity == null) {
      throw new BuiltValueNullFieldError('CartItem', 'quantity');
    }
    if (price == null) {
      throw new BuiltValueNullFieldError('CartItem', 'price');
    }
  }

  @override
  CartItem rebuild(void Function(CartItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartItemBuilder toBuilder() => new CartItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CartItem &&
        productId == other.productId &&
        quantity == other.quantity &&
        price == other.price;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, productId.hashCode), quantity.hashCode), price.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CartItem')
          ..add('productId', productId)
          ..add('quantity', quantity)
          ..add('price', price))
        .toString();
  }
}

class CartItemBuilder implements Builder<CartItem, CartItemBuilder> {
  _$CartItem _$v;

  String _productId;
  String get productId => _$this._productId;
  set productId(String productId) => _$this._productId = productId;

  int _quantity;
  int get quantity => _$this._quantity;
  set quantity(int quantity) => _$this._quantity = quantity;

  double _price;
  double get price => _$this._price;
  set price(double price) => _$this._price = price;

  CartItemBuilder();

  CartItemBuilder get _$this {
    if (_$v != null) {
      _productId = _$v.productId;
      _quantity = _$v.quantity;
      _price = _$v.price;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CartItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CartItem;
  }

  @override
  void update(void Function(CartItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CartItem build() {
    final _$result = _$v ??
        new _$CartItem._(
            productId: productId, quantity: quantity, price: price);
    replace(_$result);
    return _$result;
  }
}

class _$RegistrationInfo extends RegistrationInfo {
  @override
  final String email;
  @override
  final String displayedName;
  @override
  final String password;

  factory _$RegistrationInfo(
          [void Function(RegistrationInfoBuilder) updates]) =>
      (new RegistrationInfoBuilder()..update(updates)).build();

  _$RegistrationInfo._({this.email, this.displayedName, this.password})
      : super._();

  @override
  RegistrationInfo rebuild(void Function(RegistrationInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegistrationInfoBuilder toBuilder() =>
      new RegistrationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegistrationInfo &&
        email == other.email &&
        displayedName == other.displayedName &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, email.hashCode), displayedName.hashCode),
        password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RegistrationInfo')
          ..add('email', email)
          ..add('displayedName', displayedName)
          ..add('password', password))
        .toString();
  }
}

class RegistrationInfoBuilder
    implements Builder<RegistrationInfo, RegistrationInfoBuilder> {
  _$RegistrationInfo _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _displayedName;
  String get displayedName => _$this._displayedName;
  set displayedName(String displayedName) =>
      _$this._displayedName = displayedName;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  RegistrationInfoBuilder();

  RegistrationInfoBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _displayedName = _$v.displayedName;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegistrationInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RegistrationInfo;
  }

  @override
  void update(void Function(RegistrationInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RegistrationInfo build() {
    final _$result = _$v ??
        new _$RegistrationInfo._(
            email: email, displayedName: displayedName, password: password);
    replace(_$result);
    return _$result;
  }
}

class _$AddressPoint extends AddressPoint {
  @override
  final String id;
  @override
  final String contactName;
  @override
  final String contactPhone;
  @override
  final String address;
  @override
  final String city;
  @override
  final String town;

  factory _$AddressPoint([void Function(AddressPointBuilder) updates]) =>
      (new AddressPointBuilder()..update(updates)).build();

  _$AddressPoint._(
      {this.id,
      this.contactName,
      this.contactPhone,
      this.address,
      this.city,
      this.town})
      : super._() {
    if (contactName == null) {
      throw new BuiltValueNullFieldError('AddressPoint', 'contactName');
    }
    if (contactPhone == null) {
      throw new BuiltValueNullFieldError('AddressPoint', 'contactPhone');
    }
    if (address == null) {
      throw new BuiltValueNullFieldError('AddressPoint', 'address');
    }
    if (city == null) {
      throw new BuiltValueNullFieldError('AddressPoint', 'city');
    }
    if (town == null) {
      throw new BuiltValueNullFieldError('AddressPoint', 'town');
    }
  }

  @override
  AddressPoint rebuild(void Function(AddressPointBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressPointBuilder toBuilder() => new AddressPointBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddressPoint &&
        id == other.id &&
        contactName == other.contactName &&
        contactPhone == other.contactPhone &&
        address == other.address &&
        city == other.city &&
        town == other.town;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), contactName.hashCode),
                    contactPhone.hashCode),
                address.hashCode),
            city.hashCode),
        town.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddressPoint')
          ..add('id', id)
          ..add('contactName', contactName)
          ..add('contactPhone', contactPhone)
          ..add('address', address)
          ..add('city', city)
          ..add('town', town))
        .toString();
  }
}

class AddressPointBuilder
    implements Builder<AddressPoint, AddressPointBuilder> {
  _$AddressPoint _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _contactName;
  String get contactName => _$this._contactName;
  set contactName(String contactName) => _$this._contactName = contactName;

  String _contactPhone;
  String get contactPhone => _$this._contactPhone;
  set contactPhone(String contactPhone) => _$this._contactPhone = contactPhone;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _town;
  String get town => _$this._town;
  set town(String town) => _$this._town = town;

  AddressPointBuilder();

  AddressPointBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _contactName = _$v.contactName;
      _contactPhone = _$v.contactPhone;
      _address = _$v.address;
      _city = _$v.city;
      _town = _$v.town;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddressPoint other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddressPoint;
  }

  @override
  void update(void Function(AddressPointBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddressPoint build() {
    final _$result = _$v ??
        new _$AddressPoint._(
            id: id,
            contactName: contactName,
            contactPhone: contactPhone,
            address: address,
            city: city,
            town: town);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
