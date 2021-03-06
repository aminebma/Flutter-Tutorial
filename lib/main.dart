import 'package:flutter/material.dart';

import './product_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple,
          brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Tutorial',
            style: TextStyle(fontFamily: 'AmericanCaptain'),
          ),
        ),
        body: ProductManager(),
      ),
    );
  }
}
