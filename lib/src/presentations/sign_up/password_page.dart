import 'package:emag_clone/src/actions/auth/index.dart';
import 'package:emag_clone/src/actions/index.dart';
import 'package:emag_clone/src/models/index.dart';
import 'package:emag_clone/src/presentations/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class PasswordPage extends StatelessWidget {
  const PasswordPage({Key key}) : super(key: key);

  void _response(BuildContext context, AppAction action) {
    if (action is SignUpError) {
      // show error dialog
      print(action.error);
    }
    if (action is SignUpSuccessful) {
      // show error dialog
      Navigator.popUntil(context, ModalRoute.withName(AppRoutes.home));
    }
  }

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
                    decoration: const InputDecoration(hintText: 'password'),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    onSaved: (String value) {
                      StoreProvider.of<AppState>(context).dispatch(UpdateRegistrationInfo(password: value));
                    },
                    validator: (String value) {
                      if (value.length < 6) {
                        return 'Please introduce a longer password';
                      }
                      return null;
                    },
                  ),
                  FlatButton(
                    onPressed: () {
                      final bool valid = Form.of(context).validate();
                      if (valid) {
                        Form.of(context).save();
                        StoreProvider.of<AppState>(context)
                            .dispatch(SignUp((AppAction action) => _response(context, action)));
                      }
                    },
                    child: const Text('Create account'),
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
