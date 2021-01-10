import 'dart:async';

import 'package:emag_clone/src/init/init.dart';
import 'package:emag_clone/src/models/index.dart';
import 'package:emag_clone/src/presentations/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:rxdart/rxdart.dart';

void main() {
  runApp(EmagClone());
}

class EmagClone extends StatefulWidget {
  @override
  _EmagCloneState createState() => _EmagCloneState();
}

class _EmagCloneState extends State<EmagClone> {
  final Completer<Store<AppState>> _completer = Completer<Store<AppState>>();

  Future<void> _initStore() async {
    final List<dynamic> result = await ConcatStream<dynamic>(<Stream<dynamic>>[
      init().asStream(),
      Future<void>.delayed(const Duration(seconds: 3)).asStream(),
    ]).toList();
    _completer.complete(result[0]);
  }

  @override
  void initState() {
    super.initState();
    _initStore();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Store<AppState>>(
        future: _completer.future,
        builder: (BuildContext context, AsyncSnapshot<Store<AppState>> snapshot) {
          if (snapshot.hasData) {
            final Store<AppState> store = snapshot.data;
            return StoreProvider<AppState>(
              store: store,
              child: MaterialApp(
                theme: ThemeData.dark(),
                home: Scaffold(
                  appBar: AppBar(
                    title: const Text('Done'),
                  ),
                ),
//                routes: Routes.routes,
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
