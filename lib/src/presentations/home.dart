import 'package:emag_clone/src/containers/auth/index.dart';
import 'package:emag_clone/src/models/auth/index.dart';
import 'package:emag_clone/src/presentations/home/home_page.dart';
import 'package:emag_clone/src/presentations/login/login.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home();

  @override
  Widget build(BuildContext context) {
    return UserContainer(builder: (BuildContext context, AppUser user) {
      if (user == null) {
        return const Login();
      } else {
        return const HomePage();
      }
    });
  }
}
