import 'package:emag_clone/src/presentations/home.dart';
import 'package:flutter/cupertino.dart';

// ignore: avoid_classes_with_only_static_members
class Routes{
  static String home = '/';
  static Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    home: (BuildContext context){
      return const Home();
    }
  };
}