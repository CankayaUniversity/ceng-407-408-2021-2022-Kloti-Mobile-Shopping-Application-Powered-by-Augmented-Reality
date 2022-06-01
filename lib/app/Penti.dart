import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Penti extends StatelessWidget {
  const Penti({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //anasayfa
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Text('Kloti'),
          titleTextStyle: TextStyle(
            color: Colors.cyan,
            fontSize: 20,
          ),
          centerTitle: true,
        ),
        body: Container(
          child: Text('Penti Page'),
        ));
  }
}