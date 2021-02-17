import 'package:emag_clone/src/actions/orders/index.dart';
import 'package:emag_clone/src/containers/auth/index.dart';
import 'package:emag_clone/src/models/auth/index.dart';
import 'package:emag_clone/src/models/index.dart';
import 'package:emag_clone/src/presentations/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser user) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              user.displayedName,
              style: const TextStyle(color: Colors.blue),
            ),
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          body: Column(
            children: <Widget>[
              if (user.photoUrl != null)
                CircleAvatar(
                  backgroundImage: NetworkImage(user.photoUrl),
                  radius: 60,
                )
              else
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Text(
                    user.displayedName[0].toUpperCase(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  radius: 60,
                ),
              InkWell(
                child: const Chip(
                  label: Text('Edit profile'),
                  avatar: Icon(
                    Icons.edit,
                    color: Colors.blue,
                    size: 16,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.editProfilePage);
                },
              ),
              ListTile(
                title: const Text('My orders'),
                leading: const Icon(
                  Icons.update,
                  color: Colors.blue,
                ),
                onTap: () {
                  StoreProvider.of<AppState>(context).dispatch(const GetOrders());
                  Navigator.pushNamed(context, AppRoutes.myOrdersPage);
                },
              ),
              ListTile(
                title: const Text('Addresses'),
                leading: const Icon(
                  Icons.map,
                  color: Colors.blue,
                ),
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.myAddressesPage);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
