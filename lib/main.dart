import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Food Tester'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Tutorial'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(1.0),
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    _products.add('Advanced Food Tester');
                    //print(_products); uniquement pour le debug, sa ne s'affichera que dans la console de debug
                  });
                },
                child: Text('Add product'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
