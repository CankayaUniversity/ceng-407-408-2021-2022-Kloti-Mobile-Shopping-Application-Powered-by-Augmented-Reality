/* import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kloti_app/forgotpasspage.dart';
import 'package:kloti_app/home_page.dart';
import 'package:kloti_app/signuppage.dart';

class RouteGenerator{
  static Route<dynamic>? _createRoute(Widget gidilecekWidget){
      if(defaultTargetPlatform==TargetPlatform.iOS)
      {
         return CupertinoPageRoute(builder: (context)=>gidilecekWidget,);
      }
      else if(defaultTargetPlatform== TargetPlatform.android) {
        return MaterialPageRoute(builder: (context)=>gidilecekWidget,);
      }
    else {
    return CupertinoPageRoute(builder: (context)=> gidilecekWidget,);
    }
  }
  static Route<dynamic>? routeGenerator(RouteSettings settings ){
    switch(settings.name){
      case '/homepage':
      return _createRoute(
          AnaSayfa()
        );
      case '/forgotpasspage':
      return _createRoute(
        const ForgotPassPage()
        );
         case '/signuppage':
      return _createRoute(
         SignUp()
        );
      default:
      return MaterialPageRoute(builder: (context)=> Scaffold(
       appBar: AppBar(title: const Text('404'),),
       body: const Center(child: Text('Sayfa bulunamadı.'),),
       ),
     );
    }
  }
} */