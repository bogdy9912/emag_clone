import 'package:emag_clone/src/presentations/home.dart';
import 'package:emag_clone/src/presentations/login/reset_password_page.dart';
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
  static Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    home: (BuildContext context) => const Home(),
    signUpEmail: (BuildContext context) => const EmailPage(),
    password: (BuildContext context) => const PasswordPage(),
    displayedName: (BuildContext context) => const DisplayedNamePage(),
    resetPassword: (BuildContext context) => const ResetPasswordPage(),
    searchPage: (BuildContext context) => const SearchPage(),
  };
}
