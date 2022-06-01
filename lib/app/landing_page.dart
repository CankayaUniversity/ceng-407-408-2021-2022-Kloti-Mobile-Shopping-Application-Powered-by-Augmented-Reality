/* import 'package:flutter/material.dart';
import 'package:kloti_app/app/home_page.dart';
import 'package:kloti_app/app/sign_in/my_login.dart';
import 'package:kloti_app/viewmodel/user_model.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
      final _userModel=Provider.of<UserModel>(context);
      if(_userModel.state==ViewState.Idle)
      {
        if(_userModel.user==null)
        {
          return const MyLogin();
        }
        else{
          return AnaSayfa(user: _userModel.user);
        }
      }
      else{
        return const Scaffold(body: Center(child: CircularProgressIndicator(),),);
      }
 
}}

 */