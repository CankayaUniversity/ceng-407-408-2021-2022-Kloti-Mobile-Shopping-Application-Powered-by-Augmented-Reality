import 'package:flutter/material.dart';

void main() => runApp(const ForgotPassPage ());

class ForgotPassPage extends StatelessWidget {
  const ForgotPassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
             backgroundColor: Colors.blue.shade900,
            title:const Text('Forgot Password'),
            titleTextStyle: const TextStyle(
              color:Colors.white,
              fontSize:20,
              fontWeight: FontWeight.bold,
      ),
       centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Text('Forgot password ?'),

          ],),),
    );
}
}
