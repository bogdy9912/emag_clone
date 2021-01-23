import 'package:emag_clone/src/actions/index.dart';
import 'package:emag_clone/src/models/index.dart';
import 'package:emag_clone/src/presentations/app_routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../../actions/auth/index.dart';

class LoginPage extends StatefulWidget {
  const LoginPage();

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  void _response(AppAction action) {
    if (action is LoginError) {
      //show error dialog
      print(action.error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Form(
        child: Builder(
          builder: (BuildContext context) {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: _email,
                      decoration: const InputDecoration(hintText: 'email'),
                      validator: (String value) {
                        if (!value.contains('@') && !value.contains('.')) {
                          return 'Enter a valid email';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                    ),
                    TextFormField(
                      controller: _password,
                      decoration: const InputDecoration(hintText: 'password'),
                      validator: (String value) {
                        if (value.length < 6) {
                          return 'Enter a valid email';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                    ),
                    Row(
                      children: <Widget>[
                        const Spacer(),
                        FlatButton(
                            onPressed: () {
                              Navigator.pushNamed(context, AppRoutes.resetPassword);
                            },
                            child: const Text('Forgot password')),
                      ],
                    ),
                    const Spacer(),
                    FlatButton(
                      onPressed: () {
                        final bool valid = Form.of(context).validate();
                        if (valid) {
                          StoreProvider.of<AppState>(context)
                              .dispatch(Login(email: _email.text, password: _password.text, response: _response));
                        }
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: 'Don\'t have an account? ',
                        children: <TextSpan>[
                          TextSpan(
                              text: 'SignUp',
                              style: const TextStyle(fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushNamed(context, AppRoutes.signUpEmail);
                                }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
