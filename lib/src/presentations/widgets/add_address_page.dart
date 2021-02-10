import 'dart:ui';

import 'package:emag_clone/src/containers/auth/index.dart';
import 'package:emag_clone/src/models/auth/index.dart';
import 'package:flutter/material.dart';

class AddAddressPage extends StatefulWidget {
  const AddAddressPage({Key key, this.isEditing}) : super(key: key);

  final AddressPoint isEditing;

  @override
  _AddAddressPageState createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
  final TextEditingController _name = TextEditingController();

  final TextEditingController _telephone = TextEditingController();

  final TextEditingController _address = TextEditingController();

  final TextEditingController _city = TextEditingController();

  final TextEditingController _town = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser user) {
        if (widget.isEditing != null){
          _name.text = widget.isEditing.contactName;
          _telephone.text = widget.isEditing.contactPhone;
          _address.text = widget.isEditing.address;
          _city.text = widget.isEditing.city;
          _town.text = widget.isEditing.town;
        }
        else{
          _name.text = user.displayedName;
          _telephone.text = user.telephone??'';
        }
        return Form(
        child: Scaffold(
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.blue),
            title: Text(
              widget.isEditing != null ? 'Edit address' : 'Address',
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
            backgroundColor: Colors.white,
            actions: <Widget>[
              Builder(
                builder:(BuildContext context) => FlatButton(
                  child: const Text('SALVEAZA', style: TextStyle(color: Colors.blue)),
                  onPressed: () {
                    final bool valid = Form.of(context).validate();
                    if (valid){

                    }
                  },
                ),
              ),
            ],
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.grey[200],
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Contact person',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16.0, left: 16.0, right: 16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          TextFormField(
                            controller: _name,
                            keyboardType: TextInputType.name,
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Please enter a name';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              labelText: 'Nume Prenume',
                            ),
                          ),
                          TextFormField(
                            controller: _telephone,
                            keyboardType: TextInputType.phone,
                            validator: (String value) {
                              if (value.isEmpty || value.length != 10 || value[0] != '0') {
                                return 'Please enter a valid number';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              labelText: 'Telephone',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Address point',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16.0, left: 16.0, right: 16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          TextFormField(
                            controller: _address,
                            keyboardType: TextInputType.streetAddress,
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Please enter an address';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              labelText: 'Address',
                            ),
                          ),
                          TextFormField(
                            controller: _city,
                            keyboardType: TextInputType.name,
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Please enter a city';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              labelText: 'City',
                            ),
                          ),
                          TextFormField(
                            controller: _town,
                            keyboardType: TextInputType.name,
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Please enter a town';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              labelText: 'Town',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
      },
    );
  }
}
