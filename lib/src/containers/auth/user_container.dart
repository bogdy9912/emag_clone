part of auth_containers;

class UserContainer extends StatelessWidget {
  const UserContainer({@required this.builder});

  final ViewModelBuilder<AppUser> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppUser>(
      converter: (Store<AppState> store) => store.state.auth.user,
      builder: builder,
    );
  }
}
