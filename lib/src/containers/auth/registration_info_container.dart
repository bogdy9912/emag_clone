import 'package:emag_clone/src/models/auth/index.dart';
import 'package:emag_clone/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class RegistrationInfoContainer extends StatelessWidget {
  const RegistrationInfoContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<RegistrationInfo> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, RegistrationInfo>(
      converter: (Store<AppState> store) => store.state.auth.info,
      builder: builder,
    );
  }
}
