// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'auth',
      serializers.serialize(object.auth,
          specifiedType: const FullType(AuthState)),
      'productsState',
      serializers.serialize(object.productsState,
          specifiedType: const FullType(ProductsState)),
    ];
    if (object.isLoading != null) {
      result
        ..add('isLoading')
        ..add(serializers.serialize(object.isLoading,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'auth':
          result.auth.replace(serializers.deserialize(value,
              specifiedType: const FullType(AuthState)) as AuthState);
          break;
        case 'productsState':
          result.productsState.replace(serializers.deserialize(value,
              specifiedType: const FullType(ProductsState)) as ProductsState);
          break;
        case 'isLoading':
          result.isLoading = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final AuthState auth;
  @override
  final ProductsState productsState;
  @override
  final bool isLoading;

  factory _$AppState([void Function(AppStateBuilder) updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._({this.auth, this.productsState, this.isLoading}) : super._() {
    if (auth == null) {
      throw new BuiltValueNullFieldError('AppState', 'auth');
    }
    if (productsState == null) {
      throw new BuiltValueNullFieldError('AppState', 'productsState');
    }
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        auth == other.auth &&
        productsState == other.productsState &&
        isLoading == other.isLoading;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, auth.hashCode), productsState.hashCode),
        isLoading.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('auth', auth)
          ..add('productsState', productsState)
          ..add('isLoading', isLoading))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  AuthStateBuilder _auth;
  AuthStateBuilder get auth => _$this._auth ??= new AuthStateBuilder();
  set auth(AuthStateBuilder auth) => _$this._auth = auth;

  ProductsStateBuilder _productsState;
  ProductsStateBuilder get productsState =>
      _$this._productsState ??= new ProductsStateBuilder();
  set productsState(ProductsStateBuilder productsState) =>
      _$this._productsState = productsState;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _auth = _$v.auth?.toBuilder();
      _productsState = _$v.productsState?.toBuilder();
      _isLoading = _$v.isLoading;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              auth: auth.build(),
              productsState: productsState.build(),
              isLoading: isLoading);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'auth';
        auth.build();
        _$failedField = 'productsState';
        productsState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
