// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of auth_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoginTearOff {
  const _$LoginTearOff();

// ignore: unused_element
  Login$ call(
      {@required String email,
      @required String password,
      @required void Function(AppAction) response}) {
    return Login$(
      email: email,
      password: password,
      response: response,
    );
  }

// ignore: unused_element
  LoginSuccessful successful(AppUser user) {
    return LoginSuccessful(
      user,
    );
  }

// ignore: unused_element
  LoginError error(Object error) {
    return LoginError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Login = _$LoginTearOff();

/// @nodoc
mixin _$Login {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Login$ value), {
    @required Result successful(LoginSuccessful value),
    @required Result error(LoginError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Login$ value), {
    Result successful(LoginSuccessful value),
    Result error(LoginError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $LoginCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) =
      _$LoginCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginCopyWithImpl<$Res> implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(this._value, this._then);

  final Login _value;
  // ignore: unused_field
  final $Res Function(Login) _then;
}

/// @nodoc
abstract class $Login$CopyWith<$Res> {
  factory $Login$CopyWith(Login$ value, $Res Function(Login$) then) =
      _$Login$CopyWithImpl<$Res>;
  $Res call({String email, String password, void Function(AppAction) response});
}

/// @nodoc
class _$Login$CopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements $Login$CopyWith<$Res> {
  _$Login$CopyWithImpl(Login$ _value, $Res Function(Login$) _then)
      : super(_value, (v) => _then(v as Login$));

  @override
  Login$ get _value => super._value as Login$;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object response = freezed,
  }) {
    return _then(Login$(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      response: response == freezed
          ? _value.response
          : response as void Function(AppAction),
    ));
  }
}

/// @nodoc
class _$Login$ implements Login$ {
  const _$Login$(
      {@required this.email, @required this.password, @required this.response})
      : assert(email != null),
        assert(password != null),
        assert(response != null);

  @override
  final String email;
  @override
  final String password;
  @override
  final void Function(AppAction) response;

  @override
  String toString() {
    return 'Login(email: $email, password: $password, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Login$ &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(response);

  @override
  $Login$CopyWith<Login$> get copyWith =>
      _$Login$CopyWithImpl<Login$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(email, password, response);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(email, password, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Login$ value), {
    @required Result successful(LoginSuccessful value),
    @required Result error(LoginError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Login$ value), {
    Result successful(LoginSuccessful value),
    Result error(LoginError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Login$ implements Login {
  const factory Login$(
      {@required String email,
      @required String password,
      @required void Function(AppAction) response}) = _$Login$;

  String get email;
  String get password;
  void Function(AppAction) get response;
  $Login$CopyWith<Login$> get copyWith;
}

/// @nodoc
abstract class $LoginSuccessfulCopyWith<$Res> {
  factory $LoginSuccessfulCopyWith(
          LoginSuccessful value, $Res Function(LoginSuccessful) then) =
      _$LoginSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser user});
}

/// @nodoc
class _$LoginSuccessfulCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements $LoginSuccessfulCopyWith<$Res> {
  _$LoginSuccessfulCopyWithImpl(
      LoginSuccessful _value, $Res Function(LoginSuccessful) _then)
      : super(_value, (v) => _then(v as LoginSuccessful));

  @override
  LoginSuccessful get _value => super._value as LoginSuccessful;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(LoginSuccessful(
      user == freezed ? _value.user : user as AppUser,
    ));
  }
}

/// @nodoc
class _$LoginSuccessful implements LoginSuccessful {
  const _$LoginSuccessful(this.user) : assert(user != null);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'Login.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginSuccessful &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $LoginSuccessfulCopyWith<LoginSuccessful> get copyWith =>
      _$LoginSuccessfulCopyWithImpl<LoginSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Login$ value), {
    @required Result successful(LoginSuccessful value),
    @required Result error(LoginError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Login$ value), {
    Result successful(LoginSuccessful value),
    Result error(LoginError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class LoginSuccessful implements Login {
  const factory LoginSuccessful(AppUser user) = _$LoginSuccessful;

  AppUser get user;
  $LoginSuccessfulCopyWith<LoginSuccessful> get copyWith;
}

/// @nodoc
abstract class $LoginErrorCopyWith<$Res> {
  factory $LoginErrorCopyWith(
          LoginError value, $Res Function(LoginError) then) =
      _$LoginErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$LoginErrorCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements $LoginErrorCopyWith<$Res> {
  _$LoginErrorCopyWithImpl(LoginError _value, $Res Function(LoginError) _then)
      : super(_value, (v) => _then(v as LoginError));

  @override
  LoginError get _value => super._value as LoginError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(LoginError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$LoginError implements LoginError {
  const _$LoginError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'Login.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $LoginErrorCopyWith<LoginError> get copyWith =>
      _$LoginErrorCopyWithImpl<LoginError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Login$ value), {
    @required Result successful(LoginSuccessful value),
    @required Result error(LoginError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Login$ value), {
    Result successful(LoginSuccessful value),
    Result error(LoginError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginError implements Login, ErrorAction {
  const factory LoginError(Object error) = _$LoginError;

  Object get error;
  $LoginErrorCopyWith<LoginError> get copyWith;
}

/// @nodoc
class _$ResetPasswordTearOff {
  const _$ResetPasswordTearOff();

// ignore: unused_element
  ResetPassword$ call(String email) {
    return ResetPassword$(
      email,
    );
  }

// ignore: unused_element
  ResetPasswordSuccessful successful() {
    return const ResetPasswordSuccessful();
  }

// ignore: unused_element
  ResetPasswordError error(Object error) {
    return ResetPasswordError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ResetPassword = _$ResetPasswordTearOff();

/// @nodoc
mixin _$ResetPassword {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String email), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String email), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ResetPassword$ value), {
    @required Result successful(ResetPasswordSuccessful value),
    @required Result error(ResetPasswordError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ResetPassword$ value), {
    Result successful(ResetPasswordSuccessful value),
    Result error(ResetPasswordError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ResetPasswordCopyWith<$Res> {
  factory $ResetPasswordCopyWith(
          ResetPassword value, $Res Function(ResetPassword) then) =
      _$ResetPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetPasswordCopyWithImpl<$Res>
    implements $ResetPasswordCopyWith<$Res> {
  _$ResetPasswordCopyWithImpl(this._value, this._then);

  final ResetPassword _value;
  // ignore: unused_field
  final $Res Function(ResetPassword) _then;
}

/// @nodoc
abstract class $ResetPassword$CopyWith<$Res> {
  factory $ResetPassword$CopyWith(
          ResetPassword$ value, $Res Function(ResetPassword$) then) =
      _$ResetPassword$CopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$ResetPassword$CopyWithImpl<$Res>
    extends _$ResetPasswordCopyWithImpl<$Res>
    implements $ResetPassword$CopyWith<$Res> {
  _$ResetPassword$CopyWithImpl(
      ResetPassword$ _value, $Res Function(ResetPassword$) _then)
      : super(_value, (v) => _then(v as ResetPassword$));

  @override
  ResetPassword$ get _value => super._value as ResetPassword$;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(ResetPassword$(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$ResetPassword$ implements ResetPassword$ {
  const _$ResetPassword$(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'ResetPassword(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResetPassword$ &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $ResetPassword$CopyWith<ResetPassword$> get copyWith =>
      _$ResetPassword$CopyWithImpl<ResetPassword$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String email), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String email), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ResetPassword$ value), {
    @required Result successful(ResetPasswordSuccessful value),
    @required Result error(ResetPasswordError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ResetPassword$ value), {
    Result successful(ResetPasswordSuccessful value),
    Result error(ResetPasswordError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ResetPassword$ implements ResetPassword {
  const factory ResetPassword$(String email) = _$ResetPassword$;

  String get email;
  $ResetPassword$CopyWith<ResetPassword$> get copyWith;
}

/// @nodoc
abstract class $ResetPasswordSuccessfulCopyWith<$Res> {
  factory $ResetPasswordSuccessfulCopyWith(ResetPasswordSuccessful value,
          $Res Function(ResetPasswordSuccessful) then) =
      _$ResetPasswordSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetPasswordSuccessfulCopyWithImpl<$Res>
    extends _$ResetPasswordCopyWithImpl<$Res>
    implements $ResetPasswordSuccessfulCopyWith<$Res> {
  _$ResetPasswordSuccessfulCopyWithImpl(ResetPasswordSuccessful _value,
      $Res Function(ResetPasswordSuccessful) _then)
      : super(_value, (v) => _then(v as ResetPasswordSuccessful));

  @override
  ResetPasswordSuccessful get _value => super._value as ResetPasswordSuccessful;
}

/// @nodoc
class _$ResetPasswordSuccessful implements ResetPasswordSuccessful {
  const _$ResetPasswordSuccessful();

  @override
  String toString() {
    return 'ResetPassword.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResetPasswordSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String email), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String email), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ResetPassword$ value), {
    @required Result successful(ResetPasswordSuccessful value),
    @required Result error(ResetPasswordError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ResetPassword$ value), {
    Result successful(ResetPasswordSuccessful value),
    Result error(ResetPasswordError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordSuccessful implements ResetPassword {
  const factory ResetPasswordSuccessful() = _$ResetPasswordSuccessful;
}

/// @nodoc
abstract class $ResetPasswordErrorCopyWith<$Res> {
  factory $ResetPasswordErrorCopyWith(
          ResetPasswordError value, $Res Function(ResetPasswordError) then) =
      _$ResetPasswordErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$ResetPasswordErrorCopyWithImpl<$Res>
    extends _$ResetPasswordCopyWithImpl<$Res>
    implements $ResetPasswordErrorCopyWith<$Res> {
  _$ResetPasswordErrorCopyWithImpl(
      ResetPasswordError _value, $Res Function(ResetPasswordError) _then)
      : super(_value, (v) => _then(v as ResetPasswordError));

  @override
  ResetPasswordError get _value => super._value as ResetPasswordError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(ResetPasswordError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$ResetPasswordError implements ResetPasswordError {
  const _$ResetPasswordError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'ResetPassword.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResetPasswordError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $ResetPasswordErrorCopyWith<ResetPasswordError> get copyWith =>
      _$ResetPasswordErrorCopyWithImpl<ResetPasswordError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String email), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String email), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ResetPassword$ value), {
    @required Result successful(ResetPasswordSuccessful value),
    @required Result error(ResetPasswordError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ResetPassword$ value), {
    Result successful(ResetPasswordSuccessful value),
    Result error(ResetPasswordError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordError implements ResetPassword, ErrorAction {
  const factory ResetPasswordError(Object error) = _$ResetPasswordError;

  Object get error;
  $ResetPasswordErrorCopyWith<ResetPasswordError> get copyWith;
}

/// @nodoc
class _$UpdateRegistrationInfoTearOff {
  const _$UpdateRegistrationInfoTearOff();

// ignore: unused_element
  UpdateRegistrationInfo$ call(
      {String email, String password, String displayedName}) {
    return UpdateRegistrationInfo$(
      email: email,
      password: password,
      displayedName: displayedName,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateRegistrationInfo = _$UpdateRegistrationInfoTearOff();

/// @nodoc
mixin _$UpdateRegistrationInfo {
  String get email;
  String get password;
  String get displayedName;

  $UpdateRegistrationInfoCopyWith<UpdateRegistrationInfo> get copyWith;
}

/// @nodoc
abstract class $UpdateRegistrationInfoCopyWith<$Res> {
  factory $UpdateRegistrationInfoCopyWith(UpdateRegistrationInfo value,
          $Res Function(UpdateRegistrationInfo) then) =
      _$UpdateRegistrationInfoCopyWithImpl<$Res>;
  $Res call({String email, String password, String displayedName});
}

/// @nodoc
class _$UpdateRegistrationInfoCopyWithImpl<$Res>
    implements $UpdateRegistrationInfoCopyWith<$Res> {
  _$UpdateRegistrationInfoCopyWithImpl(this._value, this._then);

  final UpdateRegistrationInfo _value;
  // ignore: unused_field
  final $Res Function(UpdateRegistrationInfo) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object displayedName = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      displayedName: displayedName == freezed
          ? _value.displayedName
          : displayedName as String,
    ));
  }
}

/// @nodoc
abstract class $UpdateRegistrationInfo$CopyWith<$Res>
    implements $UpdateRegistrationInfoCopyWith<$Res> {
  factory $UpdateRegistrationInfo$CopyWith(UpdateRegistrationInfo$ value,
          $Res Function(UpdateRegistrationInfo$) then) =
      _$UpdateRegistrationInfo$CopyWithImpl<$Res>;
  @override
  $Res call({String email, String password, String displayedName});
}

/// @nodoc
class _$UpdateRegistrationInfo$CopyWithImpl<$Res>
    extends _$UpdateRegistrationInfoCopyWithImpl<$Res>
    implements $UpdateRegistrationInfo$CopyWith<$Res> {
  _$UpdateRegistrationInfo$CopyWithImpl(UpdateRegistrationInfo$ _value,
      $Res Function(UpdateRegistrationInfo$) _then)
      : super(_value, (v) => _then(v as UpdateRegistrationInfo$));

  @override
  UpdateRegistrationInfo$ get _value => super._value as UpdateRegistrationInfo$;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object displayedName = freezed,
  }) {
    return _then(UpdateRegistrationInfo$(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      displayedName: displayedName == freezed
          ? _value.displayedName
          : displayedName as String,
    ));
  }
}

/// @nodoc
class _$UpdateRegistrationInfo$ implements UpdateRegistrationInfo$ {
  const _$UpdateRegistrationInfo$(
      {this.email, this.password, this.displayedName});

  @override
  final String email;
  @override
  final String password;
  @override
  final String displayedName;

  @override
  String toString() {
    return 'UpdateRegistrationInfo(email: $email, password: $password, displayedName: $displayedName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateRegistrationInfo$ &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.displayedName, displayedName) ||
                const DeepCollectionEquality()
                    .equals(other.displayedName, displayedName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(displayedName);

  @override
  $UpdateRegistrationInfo$CopyWith<UpdateRegistrationInfo$> get copyWith =>
      _$UpdateRegistrationInfo$CopyWithImpl<UpdateRegistrationInfo$>(
          this, _$identity);
}

abstract class UpdateRegistrationInfo$ implements UpdateRegistrationInfo {
  const factory UpdateRegistrationInfo$(
      {String email,
      String password,
      String displayedName}) = _$UpdateRegistrationInfo$;

  @override
  String get email;
  @override
  String get password;
  @override
  String get displayedName;
  @override
  $UpdateRegistrationInfo$CopyWith<UpdateRegistrationInfo$> get copyWith;
}

/// @nodoc
class _$SignOutTearOff {
  const _$SignOutTearOff();

// ignore: unused_element
  SignOut$ call() {
    return const SignOut$();
  }

// ignore: unused_element
  SignOutSuccessful successful() {
    return const SignOutSuccessful();
  }

// ignore: unused_element
  SignOutError error(StateError error) {
    return SignOutError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignOut = _$SignOutTearOff();

/// @nodoc
mixin _$SignOut {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(),
    @required Result error(StateError error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(),
    Result error(StateError error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignOut$ value), {
    @required Result successful(SignOutSuccessful value),
    @required Result error(SignOutError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignOut$ value), {
    Result successful(SignOutSuccessful value),
    Result error(SignOutError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SignOutCopyWith<$Res> {
  factory $SignOutCopyWith(SignOut value, $Res Function(SignOut) then) =
      _$SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutCopyWithImpl<$Res> implements $SignOutCopyWith<$Res> {
  _$SignOutCopyWithImpl(this._value, this._then);

  final SignOut _value;
  // ignore: unused_field
  final $Res Function(SignOut) _then;
}

/// @nodoc
abstract class $SignOut$CopyWith<$Res> {
  factory $SignOut$CopyWith(SignOut$ value, $Res Function(SignOut$) then) =
      _$SignOut$CopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOut$CopyWithImpl<$Res> extends _$SignOutCopyWithImpl<$Res>
    implements $SignOut$CopyWith<$Res> {
  _$SignOut$CopyWithImpl(SignOut$ _value, $Res Function(SignOut$) _then)
      : super(_value, (v) => _then(v as SignOut$));

  @override
  SignOut$ get _value => super._value as SignOut$;
}

/// @nodoc
class _$SignOut$ implements SignOut$ {
  const _$SignOut$();

  @override
  String toString() {
    return 'SignOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignOut$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(),
    @required Result error(StateError error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(),
    Result error(StateError error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignOut$ value), {
    @required Result successful(SignOutSuccessful value),
    @required Result error(SignOutError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignOut$ value), {
    Result successful(SignOutSuccessful value),
    Result error(SignOutError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SignOut$ implements SignOut {
  const factory SignOut$() = _$SignOut$;
}

/// @nodoc
abstract class $SignOutSuccessfulCopyWith<$Res> {
  factory $SignOutSuccessfulCopyWith(
          SignOutSuccessful value, $Res Function(SignOutSuccessful) then) =
      _$SignOutSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutSuccessfulCopyWithImpl<$Res> extends _$SignOutCopyWithImpl<$Res>
    implements $SignOutSuccessfulCopyWith<$Res> {
  _$SignOutSuccessfulCopyWithImpl(
      SignOutSuccessful _value, $Res Function(SignOutSuccessful) _then)
      : super(_value, (v) => _then(v as SignOutSuccessful));

  @override
  SignOutSuccessful get _value => super._value as SignOutSuccessful;
}

/// @nodoc
class _$SignOutSuccessful implements SignOutSuccessful {
  const _$SignOutSuccessful();

  @override
  String toString() {
    return 'SignOut.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignOutSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(),
    @required Result error(StateError error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(),
    Result error(StateError error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignOut$ value), {
    @required Result successful(SignOutSuccessful value),
    @required Result error(SignOutError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignOut$ value), {
    Result successful(SignOutSuccessful value),
    Result error(SignOutError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SignOutSuccessful implements SignOut {
  const factory SignOutSuccessful() = _$SignOutSuccessful;
}

/// @nodoc
abstract class $SignOutErrorCopyWith<$Res> {
  factory $SignOutErrorCopyWith(
          SignOutError value, $Res Function(SignOutError) then) =
      _$SignOutErrorCopyWithImpl<$Res>;
  $Res call({StateError error});
}

/// @nodoc
class _$SignOutErrorCopyWithImpl<$Res> extends _$SignOutCopyWithImpl<$Res>
    implements $SignOutErrorCopyWith<$Res> {
  _$SignOutErrorCopyWithImpl(
      SignOutError _value, $Res Function(SignOutError) _then)
      : super(_value, (v) => _then(v as SignOutError));

  @override
  SignOutError get _value => super._value as SignOutError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(SignOutError(
      error == freezed ? _value.error : error as StateError,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$SignOutError implements SignOutError {
  const _$SignOutError(this.error) : assert(error != null);

  @override
  final StateError error;

  @override
  String toString() {
    return 'SignOut.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignOutError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $SignOutErrorCopyWith<SignOutError> get copyWith =>
      _$SignOutErrorCopyWithImpl<SignOutError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(),
    @required Result error(StateError error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(),
    Result error(StateError error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignOut$ value), {
    @required Result successful(SignOutSuccessful value),
    @required Result error(SignOutError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignOut$ value), {
    Result successful(SignOutSuccessful value),
    Result error(SignOutError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignOutError implements SignOut, ErrorAction {
  const factory SignOutError(StateError error) = _$SignOutError;

  StateError get error;
  $SignOutErrorCopyWith<SignOutError> get copyWith;
}

/// @nodoc
class _$SignUpTearOff {
  const _$SignUpTearOff();

// ignore: unused_element
  SignUp$ call(void Function(AppAction) response) {
    return SignUp$(
      response,
    );
  }

// ignore: unused_element
  SignUpSuccessful successful(AppUser user) {
    return SignUpSuccessful(
      user,
    );
  }

// ignore: unused_element
  SignUpError error(Object error) {
    return SignUpError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignUp = _$SignUpTearOff();

/// @nodoc
mixin _$SignUp {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignUp$ value), {
    @required Result successful(SignUpSuccessful value),
    @required Result error(SignUpError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignUp$ value), {
    Result successful(SignUpSuccessful value),
    Result error(SignUpError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SignUpCopyWith<$Res> {
  factory $SignUpCopyWith(SignUp value, $Res Function(SignUp) then) =
      _$SignUpCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpCopyWithImpl<$Res> implements $SignUpCopyWith<$Res> {
  _$SignUpCopyWithImpl(this._value, this._then);

  final SignUp _value;
  // ignore: unused_field
  final $Res Function(SignUp) _then;
}

/// @nodoc
abstract class $SignUp$CopyWith<$Res> {
  factory $SignUp$CopyWith(SignUp$ value, $Res Function(SignUp$) then) =
      _$SignUp$CopyWithImpl<$Res>;
  $Res call({void Function(AppAction) response});
}

/// @nodoc
class _$SignUp$CopyWithImpl<$Res> extends _$SignUpCopyWithImpl<$Res>
    implements $SignUp$CopyWith<$Res> {
  _$SignUp$CopyWithImpl(SignUp$ _value, $Res Function(SignUp$) _then)
      : super(_value, (v) => _then(v as SignUp$));

  @override
  SignUp$ get _value => super._value as SignUp$;

  @override
  $Res call({
    Object response = freezed,
  }) {
    return _then(SignUp$(
      response == freezed
          ? _value.response
          : response as void Function(AppAction),
    ));
  }
}

/// @nodoc
class _$SignUp$ implements SignUp$ {
  const _$SignUp$(this.response) : assert(response != null);

  @override
  final void Function(AppAction) response;

  @override
  String toString() {
    return 'SignUp(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUp$ &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @override
  $SignUp$CopyWith<SignUp$> get copyWith =>
      _$SignUp$CopyWithImpl<SignUp$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(response);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignUp$ value), {
    @required Result successful(SignUpSuccessful value),
    @required Result error(SignUpError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignUp$ value), {
    Result successful(SignUpSuccessful value),
    Result error(SignUpError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SignUp$ implements SignUp {
  const factory SignUp$(void Function(AppAction) response) = _$SignUp$;

  void Function(AppAction) get response;
  $SignUp$CopyWith<SignUp$> get copyWith;
}

/// @nodoc
abstract class $SignUpSuccessfulCopyWith<$Res> {
  factory $SignUpSuccessfulCopyWith(
          SignUpSuccessful value, $Res Function(SignUpSuccessful) then) =
      _$SignUpSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser user});
}

/// @nodoc
class _$SignUpSuccessfulCopyWithImpl<$Res> extends _$SignUpCopyWithImpl<$Res>
    implements $SignUpSuccessfulCopyWith<$Res> {
  _$SignUpSuccessfulCopyWithImpl(
      SignUpSuccessful _value, $Res Function(SignUpSuccessful) _then)
      : super(_value, (v) => _then(v as SignUpSuccessful));

  @override
  SignUpSuccessful get _value => super._value as SignUpSuccessful;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(SignUpSuccessful(
      user == freezed ? _value.user : user as AppUser,
    ));
  }
}

/// @nodoc
class _$SignUpSuccessful implements SignUpSuccessful {
  const _$SignUpSuccessful(this.user) : assert(user != null);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'SignUp.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUpSuccessful &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $SignUpSuccessfulCopyWith<SignUpSuccessful> get copyWith =>
      _$SignUpSuccessfulCopyWithImpl<SignUpSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignUp$ value), {
    @required Result successful(SignUpSuccessful value),
    @required Result error(SignUpError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignUp$ value), {
    Result successful(SignUpSuccessful value),
    Result error(SignUpError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SignUpSuccessful implements SignUp {
  const factory SignUpSuccessful(AppUser user) = _$SignUpSuccessful;

  AppUser get user;
  $SignUpSuccessfulCopyWith<SignUpSuccessful> get copyWith;
}

/// @nodoc
abstract class $SignUpErrorCopyWith<$Res> {
  factory $SignUpErrorCopyWith(
          SignUpError value, $Res Function(SignUpError) then) =
      _$SignUpErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$SignUpErrorCopyWithImpl<$Res> extends _$SignUpCopyWithImpl<$Res>
    implements $SignUpErrorCopyWith<$Res> {
  _$SignUpErrorCopyWithImpl(
      SignUpError _value, $Res Function(SignUpError) _then)
      : super(_value, (v) => _then(v as SignUpError));

  @override
  SignUpError get _value => super._value as SignUpError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(SignUpError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$SignUpError implements SignUpError {
  const _$SignUpError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'SignUp.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUpError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $SignUpErrorCopyWith<SignUpError> get copyWith =>
      _$SignUpErrorCopyWithImpl<SignUpError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignUp$ value), {
    @required Result successful(SignUpSuccessful value),
    @required Result error(SignUpError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignUp$ value), {
    Result successful(SignUpSuccessful value),
    Result error(SignUpError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignUpError implements SignUp, ErrorAction {
  const factory SignUpError(Object error) = _$SignUpError;

  Object get error;
  $SignUpErrorCopyWith<SignUpError> get copyWith;
}

/// @nodoc
class _$SynchronizeCartTearOff {
  const _$SynchronizeCartTearOff();

// ignore: unused_element
  SynchronizeCart$ call({@required void Function(AppAction) response}) {
    return SynchronizeCart$(
      response: response,
    );
  }

// ignore: unused_element
  SynchronizeCartSuccessful successful() {
    return const SynchronizeCartSuccessful();
  }

// ignore: unused_element
  SynchronizeCartError error(Object error) {
    return SynchronizeCartError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SynchronizeCart = _$SynchronizeCartTearOff();

/// @nodoc
mixin _$SynchronizeCart {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SynchronizeCart$ value), {
    @required Result successful(SynchronizeCartSuccessful value),
    @required Result error(SynchronizeCartError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SynchronizeCart$ value), {
    Result successful(SynchronizeCartSuccessful value),
    Result error(SynchronizeCartError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SynchronizeCartCopyWith<$Res> {
  factory $SynchronizeCartCopyWith(
          SynchronizeCart value, $Res Function(SynchronizeCart) then) =
      _$SynchronizeCartCopyWithImpl<$Res>;
}

/// @nodoc
class _$SynchronizeCartCopyWithImpl<$Res>
    implements $SynchronizeCartCopyWith<$Res> {
  _$SynchronizeCartCopyWithImpl(this._value, this._then);

  final SynchronizeCart _value;
  // ignore: unused_field
  final $Res Function(SynchronizeCart) _then;
}

/// @nodoc
abstract class $SynchronizeCart$CopyWith<$Res> {
  factory $SynchronizeCart$CopyWith(
          SynchronizeCart$ value, $Res Function(SynchronizeCart$) then) =
      _$SynchronizeCart$CopyWithImpl<$Res>;
  $Res call({void Function(AppAction) response});
}

/// @nodoc
class _$SynchronizeCart$CopyWithImpl<$Res>
    extends _$SynchronizeCartCopyWithImpl<$Res>
    implements $SynchronizeCart$CopyWith<$Res> {
  _$SynchronizeCart$CopyWithImpl(
      SynchronizeCart$ _value, $Res Function(SynchronizeCart$) _then)
      : super(_value, (v) => _then(v as SynchronizeCart$));

  @override
  SynchronizeCart$ get _value => super._value as SynchronizeCart$;

  @override
  $Res call({
    Object response = freezed,
  }) {
    return _then(SynchronizeCart$(
      response: response == freezed
          ? _value.response
          : response as void Function(AppAction),
    ));
  }
}

/// @nodoc
class _$SynchronizeCart$ implements SynchronizeCart$ {
  const _$SynchronizeCart$({@required this.response})
      : assert(response != null);

  @override
  final void Function(AppAction) response;

  @override
  String toString() {
    return 'SynchronizeCart(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SynchronizeCart$ &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @override
  $SynchronizeCart$CopyWith<SynchronizeCart$> get copyWith =>
      _$SynchronizeCart$CopyWithImpl<SynchronizeCart$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(response);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SynchronizeCart$ value), {
    @required Result successful(SynchronizeCartSuccessful value),
    @required Result error(SynchronizeCartError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SynchronizeCart$ value), {
    Result successful(SynchronizeCartSuccessful value),
    Result error(SynchronizeCartError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SynchronizeCart$ implements SynchronizeCart {
  const factory SynchronizeCart$(
      {@required void Function(AppAction) response}) = _$SynchronizeCart$;

  void Function(AppAction) get response;
  $SynchronizeCart$CopyWith<SynchronizeCart$> get copyWith;
}

/// @nodoc
abstract class $SynchronizeCartSuccessfulCopyWith<$Res> {
  factory $SynchronizeCartSuccessfulCopyWith(SynchronizeCartSuccessful value,
          $Res Function(SynchronizeCartSuccessful) then) =
      _$SynchronizeCartSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$SynchronizeCartSuccessfulCopyWithImpl<$Res>
    extends _$SynchronizeCartCopyWithImpl<$Res>
    implements $SynchronizeCartSuccessfulCopyWith<$Res> {
  _$SynchronizeCartSuccessfulCopyWithImpl(SynchronizeCartSuccessful _value,
      $Res Function(SynchronizeCartSuccessful) _then)
      : super(_value, (v) => _then(v as SynchronizeCartSuccessful));

  @override
  SynchronizeCartSuccessful get _value =>
      super._value as SynchronizeCartSuccessful;
}

/// @nodoc
class _$SynchronizeCartSuccessful implements SynchronizeCartSuccessful {
  const _$SynchronizeCartSuccessful();

  @override
  String toString() {
    return 'SynchronizeCart.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SynchronizeCartSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SynchronizeCart$ value), {
    @required Result successful(SynchronizeCartSuccessful value),
    @required Result error(SynchronizeCartError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SynchronizeCart$ value), {
    Result successful(SynchronizeCartSuccessful value),
    Result error(SynchronizeCartError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SynchronizeCartSuccessful implements SynchronizeCart {
  const factory SynchronizeCartSuccessful() = _$SynchronizeCartSuccessful;
}

/// @nodoc
abstract class $SynchronizeCartErrorCopyWith<$Res> {
  factory $SynchronizeCartErrorCopyWith(SynchronizeCartError value,
          $Res Function(SynchronizeCartError) then) =
      _$SynchronizeCartErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$SynchronizeCartErrorCopyWithImpl<$Res>
    extends _$SynchronizeCartCopyWithImpl<$Res>
    implements $SynchronizeCartErrorCopyWith<$Res> {
  _$SynchronizeCartErrorCopyWithImpl(
      SynchronizeCartError _value, $Res Function(SynchronizeCartError) _then)
      : super(_value, (v) => _then(v as SynchronizeCartError));

  @override
  SynchronizeCartError get _value => super._value as SynchronizeCartError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(SynchronizeCartError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$SynchronizeCartError implements SynchronizeCartError {
  const _$SynchronizeCartError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'SynchronizeCart.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SynchronizeCartError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $SynchronizeCartErrorCopyWith<SynchronizeCartError> get copyWith =>
      _$SynchronizeCartErrorCopyWithImpl<SynchronizeCartError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SynchronizeCart$ value), {
    @required Result successful(SynchronizeCartSuccessful value),
    @required Result error(SynchronizeCartError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SynchronizeCart$ value), {
    Result successful(SynchronizeCartSuccessful value),
    Result error(SynchronizeCartError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SynchronizeCartError implements SynchronizeCart, ErrorAction {
  const factory SynchronizeCartError(Object error) = _$SynchronizeCartError;

  Object get error;
  $SynchronizeCartErrorCopyWith<SynchronizeCartError> get copyWith;
}

/// @nodoc
class _$UpdateCartTearOff {
  const _$UpdateCartTearOff();

// ignore: unused_element
  UpdateCart$ call(
      {Product addProduct, Product removeProduct, Product clearProduct}) {
    return UpdateCart$(
      addProduct: addProduct,
      removeProduct: removeProduct,
      clearProduct: clearProduct,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateCart = _$UpdateCartTearOff();

/// @nodoc
mixin _$UpdateCart {
  Product get addProduct;
  Product get removeProduct;
  Product get clearProduct;

  $UpdateCartCopyWith<UpdateCart> get copyWith;
}

/// @nodoc
abstract class $UpdateCartCopyWith<$Res> {
  factory $UpdateCartCopyWith(
          UpdateCart value, $Res Function(UpdateCart) then) =
      _$UpdateCartCopyWithImpl<$Res>;
  $Res call({Product addProduct, Product removeProduct, Product clearProduct});
}

/// @nodoc
class _$UpdateCartCopyWithImpl<$Res> implements $UpdateCartCopyWith<$Res> {
  _$UpdateCartCopyWithImpl(this._value, this._then);

  final UpdateCart _value;
  // ignore: unused_field
  final $Res Function(UpdateCart) _then;

  @override
  $Res call({
    Object addProduct = freezed,
    Object removeProduct = freezed,
    Object clearProduct = freezed,
  }) {
    return _then(_value.copyWith(
      addProduct:
          addProduct == freezed ? _value.addProduct : addProduct as Product,
      removeProduct: removeProduct == freezed
          ? _value.removeProduct
          : removeProduct as Product,
      clearProduct: clearProduct == freezed
          ? _value.clearProduct
          : clearProduct as Product,
    ));
  }
}

/// @nodoc
abstract class $UpdateCart$CopyWith<$Res> implements $UpdateCartCopyWith<$Res> {
  factory $UpdateCart$CopyWith(
          UpdateCart$ value, $Res Function(UpdateCart$) then) =
      _$UpdateCart$CopyWithImpl<$Res>;
  @override
  $Res call({Product addProduct, Product removeProduct, Product clearProduct});
}

/// @nodoc
class _$UpdateCart$CopyWithImpl<$Res> extends _$UpdateCartCopyWithImpl<$Res>
    implements $UpdateCart$CopyWith<$Res> {
  _$UpdateCart$CopyWithImpl(
      UpdateCart$ _value, $Res Function(UpdateCart$) _then)
      : super(_value, (v) => _then(v as UpdateCart$));

  @override
  UpdateCart$ get _value => super._value as UpdateCart$;

  @override
  $Res call({
    Object addProduct = freezed,
    Object removeProduct = freezed,
    Object clearProduct = freezed,
  }) {
    return _then(UpdateCart$(
      addProduct:
          addProduct == freezed ? _value.addProduct : addProduct as Product,
      removeProduct: removeProduct == freezed
          ? _value.removeProduct
          : removeProduct as Product,
      clearProduct: clearProduct == freezed
          ? _value.clearProduct
          : clearProduct as Product,
    ));
  }
}

/// @nodoc
class _$UpdateCart$ implements UpdateCart$ {
  const _$UpdateCart$({this.addProduct, this.removeProduct, this.clearProduct});

  @override
  final Product addProduct;
  @override
  final Product removeProduct;
  @override
  final Product clearProduct;

  @override
  String toString() {
    return 'UpdateCart(addProduct: $addProduct, removeProduct: $removeProduct, clearProduct: $clearProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateCart$ &&
            (identical(other.addProduct, addProduct) ||
                const DeepCollectionEquality()
                    .equals(other.addProduct, addProduct)) &&
            (identical(other.removeProduct, removeProduct) ||
                const DeepCollectionEquality()
                    .equals(other.removeProduct, removeProduct)) &&
            (identical(other.clearProduct, clearProduct) ||
                const DeepCollectionEquality()
                    .equals(other.clearProduct, clearProduct)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(addProduct) ^
      const DeepCollectionEquality().hash(removeProduct) ^
      const DeepCollectionEquality().hash(clearProduct);

  @override
  $UpdateCart$CopyWith<UpdateCart$> get copyWith =>
      _$UpdateCart$CopyWithImpl<UpdateCart$>(this, _$identity);
}

abstract class UpdateCart$ implements UpdateCart {
  const factory UpdateCart$(
      {Product addProduct,
      Product removeProduct,
      Product clearProduct}) = _$UpdateCart$;

  @override
  Product get addProduct;
  @override
  Product get removeProduct;
  @override
  Product get clearProduct;
  @override
  $UpdateCart$CopyWith<UpdateCart$> get copyWith;
}

/// @nodoc
class _$InitializeAppTearOff {
  const _$InitializeAppTearOff();

// ignore: unused_element
  InitializeApp$ call() {
    return const InitializeApp$();
  }

// ignore: unused_element
  InitializeAppSuccessful successful(AppUser user) {
    return InitializeAppSuccessful(
      user,
    );
  }

// ignore: unused_element
  InitializeAppError error(Object error) {
    return InitializeAppError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $InitializeApp = _$InitializeAppTearOff();

/// @nodoc
mixin _$InitializeApp {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(InitializeApp$ value), {
    @required Result successful(InitializeAppSuccessful value),
    @required Result error(InitializeAppError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(InitializeApp$ value), {
    Result successful(InitializeAppSuccessful value),
    Result error(InitializeAppError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $InitializeAppCopyWith<$Res> {
  factory $InitializeAppCopyWith(
          InitializeApp value, $Res Function(InitializeApp) then) =
      _$InitializeAppCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeAppCopyWith<$Res> {
  _$InitializeAppCopyWithImpl(this._value, this._then);

  final InitializeApp _value;
  // ignore: unused_field
  final $Res Function(InitializeApp) _then;
}

/// @nodoc
abstract class $InitializeApp$CopyWith<$Res> {
  factory $InitializeApp$CopyWith(
          InitializeApp$ value, $Res Function(InitializeApp$) then) =
      _$InitializeApp$CopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeApp$CopyWithImpl<$Res>
    extends _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeApp$CopyWith<$Res> {
  _$InitializeApp$CopyWithImpl(
      InitializeApp$ _value, $Res Function(InitializeApp$) _then)
      : super(_value, (v) => _then(v as InitializeApp$));

  @override
  InitializeApp$ get _value => super._value as InitializeApp$;
}

/// @nodoc
class _$InitializeApp$ implements InitializeApp$ {
  const _$InitializeApp$();

  @override
  String toString() {
    return 'InitializeApp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitializeApp$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(InitializeApp$ value), {
    @required Result successful(InitializeAppSuccessful value),
    @required Result error(InitializeAppError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(InitializeApp$ value), {
    Result successful(InitializeAppSuccessful value),
    Result error(InitializeAppError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class InitializeApp$ implements InitializeApp {
  const factory InitializeApp$() = _$InitializeApp$;
}

/// @nodoc
abstract class $InitializeAppSuccessfulCopyWith<$Res> {
  factory $InitializeAppSuccessfulCopyWith(InitializeAppSuccessful value,
          $Res Function(InitializeAppSuccessful) then) =
      _$InitializeAppSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser user});
}

/// @nodoc
class _$InitializeAppSuccessfulCopyWithImpl<$Res>
    extends _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeAppSuccessfulCopyWith<$Res> {
  _$InitializeAppSuccessfulCopyWithImpl(InitializeAppSuccessful _value,
      $Res Function(InitializeAppSuccessful) _then)
      : super(_value, (v) => _then(v as InitializeAppSuccessful));

  @override
  InitializeAppSuccessful get _value => super._value as InitializeAppSuccessful;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(InitializeAppSuccessful(
      user == freezed ? _value.user : user as AppUser,
    ));
  }
}

/// @nodoc
class _$InitializeAppSuccessful implements InitializeAppSuccessful {
  const _$InitializeAppSuccessful(this.user) : assert(user != null);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'InitializeApp.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitializeAppSuccessful &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $InitializeAppSuccessfulCopyWith<InitializeAppSuccessful> get copyWith =>
      _$InitializeAppSuccessfulCopyWithImpl<InitializeAppSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(InitializeApp$ value), {
    @required Result successful(InitializeAppSuccessful value),
    @required Result error(InitializeAppError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(InitializeApp$ value), {
    Result successful(InitializeAppSuccessful value),
    Result error(InitializeAppError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class InitializeAppSuccessful implements InitializeApp {
  const factory InitializeAppSuccessful(AppUser user) =
      _$InitializeAppSuccessful;

  AppUser get user;
  $InitializeAppSuccessfulCopyWith<InitializeAppSuccessful> get copyWith;
}

/// @nodoc
abstract class $InitializeAppErrorCopyWith<$Res> {
  factory $InitializeAppErrorCopyWith(
          InitializeAppError value, $Res Function(InitializeAppError) then) =
      _$InitializeAppErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$InitializeAppErrorCopyWithImpl<$Res>
    extends _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeAppErrorCopyWith<$Res> {
  _$InitializeAppErrorCopyWithImpl(
      InitializeAppError _value, $Res Function(InitializeAppError) _then)
      : super(_value, (v) => _then(v as InitializeAppError));

  @override
  InitializeAppError get _value => super._value as InitializeAppError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(InitializeAppError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$InitializeAppError implements InitializeAppError {
  const _$InitializeAppError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'InitializeApp.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitializeAppError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $InitializeAppErrorCopyWith<InitializeAppError> get copyWith =>
      _$InitializeAppErrorCopyWithImpl<InitializeAppError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(InitializeApp$ value), {
    @required Result successful(InitializeAppSuccessful value),
    @required Result error(InitializeAppError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(InitializeApp$ value), {
    Result successful(InitializeAppSuccessful value),
    Result error(InitializeAppError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class InitializeAppError implements InitializeApp, ErrorAction {
  const factory InitializeAppError(Object error) = _$InitializeAppError;

  Object get error;
  $InitializeAppErrorCopyWith<InitializeAppError> get copyWith;
}

/// @nodoc
class _$UpdateFavoriteProductsTearOff {
  const _$UpdateFavoriteProductsTearOff();

// ignore: unused_element
  UpdateFavoriteProducts$ call({String add, String remove}) {
    return UpdateFavoriteProducts$(
      add: add,
      remove: remove,
    );
  }

// ignore: unused_element
  UpdateFavoriteProductsSuccessful successful({String add, String remove}) {
    return UpdateFavoriteProductsSuccessful(
      add: add,
      remove: remove,
    );
  }

// ignore: unused_element
  UpdateFavoriteProductsError error(Object error) {
    return UpdateFavoriteProductsError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateFavoriteProducts = _$UpdateFavoriteProductsTearOff();

/// @nodoc
mixin _$UpdateFavoriteProducts {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String add, String remove), {
    @required Result successful(String add, String remove),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String add, String remove), {
    Result successful(String add, String remove),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateFavoriteProducts$ value), {
    @required Result successful(UpdateFavoriteProductsSuccessful value),
    @required Result error(UpdateFavoriteProductsError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateFavoriteProducts$ value), {
    Result successful(UpdateFavoriteProductsSuccessful value),
    Result error(UpdateFavoriteProductsError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateFavoriteProductsCopyWith<$Res> {
  factory $UpdateFavoriteProductsCopyWith(UpdateFavoriteProducts value,
          $Res Function(UpdateFavoriteProducts) then) =
      _$UpdateFavoriteProductsCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateFavoriteProductsCopyWithImpl<$Res>
    implements $UpdateFavoriteProductsCopyWith<$Res> {
  _$UpdateFavoriteProductsCopyWithImpl(this._value, this._then);

  final UpdateFavoriteProducts _value;
  // ignore: unused_field
  final $Res Function(UpdateFavoriteProducts) _then;
}

/// @nodoc
abstract class $UpdateFavoriteProducts$CopyWith<$Res> {
  factory $UpdateFavoriteProducts$CopyWith(UpdateFavoriteProducts$ value,
          $Res Function(UpdateFavoriteProducts$) then) =
      _$UpdateFavoriteProducts$CopyWithImpl<$Res>;
  $Res call({String add, String remove});
}

/// @nodoc
class _$UpdateFavoriteProducts$CopyWithImpl<$Res>
    extends _$UpdateFavoriteProductsCopyWithImpl<$Res>
    implements $UpdateFavoriteProducts$CopyWith<$Res> {
  _$UpdateFavoriteProducts$CopyWithImpl(UpdateFavoriteProducts$ _value,
      $Res Function(UpdateFavoriteProducts$) _then)
      : super(_value, (v) => _then(v as UpdateFavoriteProducts$));

  @override
  UpdateFavoriteProducts$ get _value => super._value as UpdateFavoriteProducts$;

  @override
  $Res call({
    Object add = freezed,
    Object remove = freezed,
  }) {
    return _then(UpdateFavoriteProducts$(
      add: add == freezed ? _value.add : add as String,
      remove: remove == freezed ? _value.remove : remove as String,
    ));
  }
}

/// @nodoc
class _$UpdateFavoriteProducts$ implements UpdateFavoriteProducts$ {
  const _$UpdateFavoriteProducts$({this.add, this.remove});

  @override
  final String add;
  @override
  final String remove;

  @override
  String toString() {
    return 'UpdateFavoriteProducts(add: $add, remove: $remove)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateFavoriteProducts$ &&
            (identical(other.add, add) ||
                const DeepCollectionEquality().equals(other.add, add)) &&
            (identical(other.remove, remove) ||
                const DeepCollectionEquality().equals(other.remove, remove)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(add) ^
      const DeepCollectionEquality().hash(remove);

  @override
  $UpdateFavoriteProducts$CopyWith<UpdateFavoriteProducts$> get copyWith =>
      _$UpdateFavoriteProducts$CopyWithImpl<UpdateFavoriteProducts$>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String add, String remove), {
    @required Result successful(String add, String remove),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(add, remove);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String add, String remove), {
    Result successful(String add, String remove),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(add, remove);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateFavoriteProducts$ value), {
    @required Result successful(UpdateFavoriteProductsSuccessful value),
    @required Result error(UpdateFavoriteProductsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateFavoriteProducts$ value), {
    Result successful(UpdateFavoriteProductsSuccessful value),
    Result error(UpdateFavoriteProductsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateFavoriteProducts$ implements UpdateFavoriteProducts {
  const factory UpdateFavoriteProducts$({String add, String remove}) =
      _$UpdateFavoriteProducts$;

  String get add;
  String get remove;
  $UpdateFavoriteProducts$CopyWith<UpdateFavoriteProducts$> get copyWith;
}

/// @nodoc
abstract class $UpdateFavoriteProductsSuccessfulCopyWith<$Res> {
  factory $UpdateFavoriteProductsSuccessfulCopyWith(
          UpdateFavoriteProductsSuccessful value,
          $Res Function(UpdateFavoriteProductsSuccessful) then) =
      _$UpdateFavoriteProductsSuccessfulCopyWithImpl<$Res>;
  $Res call({String add, String remove});
}

/// @nodoc
class _$UpdateFavoriteProductsSuccessfulCopyWithImpl<$Res>
    extends _$UpdateFavoriteProductsCopyWithImpl<$Res>
    implements $UpdateFavoriteProductsSuccessfulCopyWith<$Res> {
  _$UpdateFavoriteProductsSuccessfulCopyWithImpl(
      UpdateFavoriteProductsSuccessful _value,
      $Res Function(UpdateFavoriteProductsSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateFavoriteProductsSuccessful));

  @override
  UpdateFavoriteProductsSuccessful get _value =>
      super._value as UpdateFavoriteProductsSuccessful;

  @override
  $Res call({
    Object add = freezed,
    Object remove = freezed,
  }) {
    return _then(UpdateFavoriteProductsSuccessful(
      add: add == freezed ? _value.add : add as String,
      remove: remove == freezed ? _value.remove : remove as String,
    ));
  }
}

/// @nodoc
class _$UpdateFavoriteProductsSuccessful
    implements UpdateFavoriteProductsSuccessful {
  const _$UpdateFavoriteProductsSuccessful({this.add, this.remove});

  @override
  final String add;
  @override
  final String remove;

  @override
  String toString() {
    return 'UpdateFavoriteProducts.successful(add: $add, remove: $remove)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateFavoriteProductsSuccessful &&
            (identical(other.add, add) ||
                const DeepCollectionEquality().equals(other.add, add)) &&
            (identical(other.remove, remove) ||
                const DeepCollectionEquality().equals(other.remove, remove)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(add) ^
      const DeepCollectionEquality().hash(remove);

  @override
  $UpdateFavoriteProductsSuccessfulCopyWith<UpdateFavoriteProductsSuccessful>
      get copyWith => _$UpdateFavoriteProductsSuccessfulCopyWithImpl<
          UpdateFavoriteProductsSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String add, String remove), {
    @required Result successful(String add, String remove),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(add, remove);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String add, String remove), {
    Result successful(String add, String remove),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(add, remove);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateFavoriteProducts$ value), {
    @required Result successful(UpdateFavoriteProductsSuccessful value),
    @required Result error(UpdateFavoriteProductsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateFavoriteProducts$ value), {
    Result successful(UpdateFavoriteProductsSuccessful value),
    Result error(UpdateFavoriteProductsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateFavoriteProductsSuccessful
    implements UpdateFavoriteProducts {
  const factory UpdateFavoriteProductsSuccessful({String add, String remove}) =
      _$UpdateFavoriteProductsSuccessful;

  String get add;
  String get remove;
  $UpdateFavoriteProductsSuccessfulCopyWith<UpdateFavoriteProductsSuccessful>
      get copyWith;
}

/// @nodoc
abstract class $UpdateFavoriteProductsErrorCopyWith<$Res> {
  factory $UpdateFavoriteProductsErrorCopyWith(
          UpdateFavoriteProductsError value,
          $Res Function(UpdateFavoriteProductsError) then) =
      _$UpdateFavoriteProductsErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateFavoriteProductsErrorCopyWithImpl<$Res>
    extends _$UpdateFavoriteProductsCopyWithImpl<$Res>
    implements $UpdateFavoriteProductsErrorCopyWith<$Res> {
  _$UpdateFavoriteProductsErrorCopyWithImpl(UpdateFavoriteProductsError _value,
      $Res Function(UpdateFavoriteProductsError) _then)
      : super(_value, (v) => _then(v as UpdateFavoriteProductsError));

  @override
  UpdateFavoriteProductsError get _value =>
      super._value as UpdateFavoriteProductsError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateFavoriteProductsError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateFavoriteProductsError implements UpdateFavoriteProductsError {
  const _$UpdateFavoriteProductsError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateFavoriteProducts.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateFavoriteProductsError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateFavoriteProductsErrorCopyWith<UpdateFavoriteProductsError>
      get copyWith => _$UpdateFavoriteProductsErrorCopyWithImpl<
          UpdateFavoriteProductsError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String add, String remove), {
    @required Result successful(String add, String remove),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String add, String remove), {
    Result successful(String add, String remove),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateFavoriteProducts$ value), {
    @required Result successful(UpdateFavoriteProductsSuccessful value),
    @required Result error(UpdateFavoriteProductsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateFavoriteProducts$ value), {
    Result successful(UpdateFavoriteProductsSuccessful value),
    Result error(UpdateFavoriteProductsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateFavoriteProductsError
    implements UpdateFavoriteProducts, ErrorAction {
  const factory UpdateFavoriteProductsError(Object error) =
      _$UpdateFavoriteProductsError;

  Object get error;
  $UpdateFavoriteProductsErrorCopyWith<UpdateFavoriteProductsError>
      get copyWith;
}
