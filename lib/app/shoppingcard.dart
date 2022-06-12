import 'package:flutter/material.dart';

void main() => runApp(ShoppingCard2());

class ShoppingCard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Sepet'),
          ),
        ),
      ),
    );
  }
}