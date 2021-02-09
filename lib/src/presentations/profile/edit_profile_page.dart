import 'package:emag_clone/src/containers/auth/index.dart';
import 'package:emag_clone/src/models/auth/index.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _telephone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser user) {
        _name.text = user.displayedName;
        _email.text = user.email;
        _telephone.text = user.telephone??'';
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            iconTheme: const IconThemeData().copyWith(color: Colors.blue),
            title: const Text(
              'Profilul meu',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            actions: <Widget>[
              FlatButton(
                child: const Text(
                  'SALVEAZA',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                TextField(
                  controller: _name,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                  ),
                ),
                TextField(
                  controller: _telephone,
                  decoration: const InputDecoration(
                    labelText: 'Telephone number',
                  ),
                ),
                TextField(
                  enabled: false,
                  controller: _email,
                  style: const TextStyle(color: Colors.grey),
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
