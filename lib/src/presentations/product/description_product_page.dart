import 'package:flutter/material.dart';

class DescriptionProductPage extends StatelessWidget {


  const DescriptionProductPage({Key key, this.description = ''}): super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Description'),),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Text(description),
      ),
    );
  }
}
