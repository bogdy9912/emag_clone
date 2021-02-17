import 'package:emag_clone/src/containers/auth/index.dart';
import 'package:emag_clone/src/models/auth/index.dart';
import 'package:emag_clone/src/presentations/app_routes.dart';
import 'package:flutter/material.dart';

class MyAddressesPage extends StatelessWidget {
  const MyAddressesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser user) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconTheme: const IconThemeData(color: Colors.blue),
            title: const Text(
              'Addresses',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          body: ListView.builder(
            itemCount: user.addresses.length,
            itemBuilder: (BuildContext context, int index) {
              final AddressPoint address = user.addresses.values.toList()[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Divider(),
                    ListTile(
                      title: Text('${address.contactName} - ${address.contactPhone}'),
                      subtitle: Text('${address.address}, ${address.city}, ${address.town}'),
                      trailing: IconButton(
                        icon: const Icon(Icons.more_vert),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.addAddressPage);
            },
          ),
        );
      },
    );
  }
}
