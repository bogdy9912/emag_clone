import 'package:emag_clone/src/actions/auth/index.dart';
import 'package:emag_clone/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reset password'),
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
                    validator: (String value) {
                      if (!value.contains('@') && !value.contains('.')) {
                        return 'Enter a valid email';
                      }
                      return null;
                    },
                    onSaved: (String value) {
                      StoreProvider.of<AppState>(context).dispatch(ResetPassword(value));
                    },
                  ),
                  const Spacer(),
                  FlatButton(
                    onPressed: () {
                      final bool valid = Form.of(context).validate();
                      if (valid) {
                        Form.of(context).save();
                        Navigator.pop(context);
                      }
                    },
                    child: const Text('Reset password'),
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
