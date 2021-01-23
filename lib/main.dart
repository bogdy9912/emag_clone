import 'package:emag_clone/src/models/index.dart';
import 'package:emag_clone/src/presentations/mixin/init_mixin.dart';
import 'package:emag_clone/src/presentations/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

void main() {
  runApp(EmagClone());
}

class EmagClone extends StatefulWidget {
  @override
  _EmagCloneState createState() => _EmagCloneState();
}

class _EmagCloneState extends State<EmagClone> with InitMixin<EmagClone> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Store<AppState>>(
        future: future,
        builder: (BuildContext context, AsyncSnapshot<Store<AppState>> snapshot) {
          if (snapshot.hasData) {
            final Store<AppState> store = snapshot.data;
            return StoreProvider<AppState>(
              store: store,
              child: MaterialApp(
                theme: ThemeData.dark(),
                routes: AppRoutes.routes,
              ),
            );
          }
          if (snapshot.hasError) {
            throw snapshot.error;
          }
          return MaterialApp(
            theme: ThemeData.dark(),
            home: const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            ),
          );
        });
  }
}
