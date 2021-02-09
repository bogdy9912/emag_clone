import 'package:emag_clone/src/actions/auth/index.dart';
import 'package:emag_clone/src/models/auth/index.dart';
import 'package:redux/redux.dart';

Reducer<AuthState> authReducer = combineReducers(<Reducer<AuthState>>[
  TypedReducer<AuthState, InitializeAppSuccessful>(_initializeAppSuccessful),
  TypedReducer<AuthState, LoginSuccessful>(_loginSuccessful),
  TypedReducer<AuthState, UpdateRegistrationInfo$>(_updateRegistrationInfo),
  TypedReducer<AuthState, SignUpSuccessful>(_signUpSuccessful),
  TypedReducer<AuthState, UpdateCart$>(_updateCart),
  TypedReducer<AuthState, UpdateFavoriteProductsSuccessful>(_updateFavoriteProductsSuccessful),
]);

AuthState _initializeAppSuccessful(AuthState state, InitializeAppSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user.toBuilder());
}

AuthState _loginSuccessful(AuthState state, LoginSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user.toBuilder());
}

AuthState _updateRegistrationInfo(AuthState state, UpdateRegistrationInfo$ action) {
  return state.rebuild((AuthStateBuilder b) {
    if (action.email != null) {
      b.info.email = action.email;
    } else if (action.password != null) {
      b.info.password = action.password;
    } else if (action.displayedName != null) {
      b.info.displayedName = action.displayedName;
    } else {
      b.info = RegistrationInfo().toBuilder();
    }
  });
}

AuthState _signUpSuccessful(AuthState state, SignUpSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user.toBuilder());
}

AuthState _updateCart(AuthState state, UpdateCart$ action) {
  final Cart cartState = state.user.cart ?? Cart();

  return state.rebuild((AuthStateBuilder b) {
    if (action.addProduct != null) {
      final int index = cartState.items.indexWhere((CartItem item) => item.productId == action.addProduct.id);

      if (index == -1) {
        b.user.cart.items.add(CartItem(productId: action.addProduct.id, quantity: 1, price: action.addProduct.price));
      } else {
        b.user.cart.items[index] = b.user.cart.items[index].rebuild((CartItemBuilder b) => b.quantity = b.quantity + 1);
      }
    } else if (action.removeProduct != null) {
      final int index = cartState.items.indexWhere((CartItem item) => item.productId == action.addProduct.id);
      if (index == -1) {
        // eroare
        // ar trb sa fac si pt cazul in care ajunge quantity la 0? si sa fac clear la product? sau fac din UI sa fie minim 1bucs
      } else {
        b.user.cart.items[index].rebuild((CartItemBuilder b) => b.quantity = b.quantity - 1);
      }
    } else if (action.clearProduct != null) {
      b.user.cart.items.removeWhere((CartItem item) => item.productId == action.addProduct.id);
    } else {
      b.user.cart = Cart().toBuilder();
    }
  });
}

AuthState _updateFavoriteProductsSuccessful(AuthState state, UpdateFavoriteProductsSuccessful action) {
  return state.rebuild((AuthStateBuilder b) {
    if (action.add != null) {
      if (!state.user.favorites.contains(action.add)) {
        b.user.favorites.add(action.add);
      }
    } else {
      if (state.user.favorites.contains(action.remove)) {
        b.user.favorites.remove(action.remove);
      }
    }
  });
}
