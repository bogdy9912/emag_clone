import 'package:emag_clone/src/models/products/index.dart';
import 'package:emag_clone/src/presentations/cart/cart_page.dart';
import 'package:emag_clone/src/presentations/home.dart';
import 'package:emag_clone/src/presentations/login/reset_password_page.dart';
import 'package:emag_clone/src/presentations/product/description_product_page.dart';
import 'package:emag_clone/src/presentations/product/product_page.dart';
import 'package:emag_clone/src/presentations/profile/edit_profile_page.dart';
import 'package:emag_clone/src/presentations/sign_up/displayed_name_page.dart';
import 'package:emag_clone/src/presentations/sign_up/email_page.dart';
import 'package:emag_clone/src/presentations/sign_up/password_page.dart';
import 'package:flutter/widgets.dart';

import 'products/search_page.dart';

// ignore: avoid_classes_with_only_static_members
class AppRoutes {
  static String home = '/';
  static String signUpEmail = '/signUpEmail';
  static String password = '/password';
  static String displayedName = '/displayedName';
  static String resetPassword = '/resetPassword';
  static String searchPage = '/searchPage';
  static String cartPage = '/cartPage';
  static String productPage = '/productPage';
  static String descriptionProductPage = '/descriptionProductPage';
  static String editProfilePage = '/editProfilePage';
  static Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    home: (BuildContext context) => const Home(),
    signUpEmail: (BuildContext context) => const EmailPage(),
    password: (BuildContext context) => const PasswordPage(),
    displayedName: (BuildContext context) => const DisplayedNamePage(),
    resetPassword: (BuildContext context) => const ResetPasswordPage(),
    searchPage: (BuildContext context) => const SearchPage(),
    cartPage: (BuildContext context) => const CartPage(),
    productPage: (BuildContext context) {
      final Product arg = ModalRoute.of(context).settings.arguments;
      return ProductPage(product: arg);
    },
    descriptionProductPage: (BuildContext context) {
      final String arg = ModalRoute.of(context).settings.arguments;
      return  DescriptionProductPage(description: arg);
    },
    editProfilePage: (BuildContext context) => const EditProfilePage(),
  };
}
