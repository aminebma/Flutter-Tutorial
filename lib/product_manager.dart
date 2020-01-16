import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager(this.startingProduct){
    print('[ProductManager Widget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[ProductManager Widget] createState()');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

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
                print(_products); //uniquement pour le debug, sa ne s'affichera que dans la console de debug
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
