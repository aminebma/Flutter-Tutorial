import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State {
  List<String> _products = ['Food Tester'];
  @override
  Widget build(BuildContext context) {
    return Column(
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
        Products(_products)
      ],
    );
  }
}
