import 'package:emag_clone/src/actions/auth/index.dart';
import 'package:emag_clone/src/models/index.dart';
import 'package:emag_clone/src/presentations/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class EmailPage extends StatelessWidget {
  const EmailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignUp'),
      ),
      body: Form(
        child: Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(hintText: 'email'),
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (String value) {
                      StoreProvider.of<AppState>(context).dispatch(UpdateRegistrationInfo(email: value));
                    },
                    validator: (String value) {
                      if (!value.contains('@') && !value.contains('.')) {
                        return 'Enter a valid email';
                      }
                      return null;
                    },
                  ),
                  FlatButton(
                    onPressed: () {
                      final bool valid = Form.of(context).validate();
                      if (valid) {
                        Form.of(context).save();
                        Navigator.pushNamed(context, AppRoutes.displayedName);
                      }
                    },
                    child: const Text('Continue'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
