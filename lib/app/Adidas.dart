
import 'package:flutter/material.dart';

class Adidas extends StatelessWidget {
  const Adidas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //anasayfa
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: const Text('Kloti'),
          titleTextStyle: const TextStyle(
            color: Colors.cyan,
            fontSize: 20,
          ),
          centerTitle: true,
        ),
        body: const  Text('Adidas Page'));
  }
}