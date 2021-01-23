import 'package:emag_clone/src/actions/auth/index.dart';
import 'package:emag_clone/src/models/index.dart';
import 'package:emag_clone/src/presentations/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class DisplayedNamePage extends StatelessWidget {
  const DisplayedNamePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignUp'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(hintText: 'username'),
              keyboardType: TextInputType.name,
              onChanged: (String value) {
                StoreProvider.of<AppState>(context).dispatch(UpdateRegistrationInfo(displayedName: value));
              },
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.password);
              },
              child: const Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}
