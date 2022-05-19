/* import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:kloti_app/models/user_model.dart';

class UserProvider with ChangeNotifier{
  void addUserData({
    User? currentUser,
    String? firstName,
    String? lastName,
    String? email,
    String? address,
    String? password,
    String? gender,
     String? image,
    int? phoneNumber,



  }) async{
    await FirebaseFirestore.instance
          .collection('customersData')
          .doc(currentUser!.uid)
          .set(
            {
                'customerUid' : currentUser.uid,
               'customerFirstName' :firstName,
                'customerLastName' : lastName,
                'customerEmail' : email,
                'customerPassword' : password,
                'customerAddress' : address,
                'customerImage' : image,
                'customerPhoneNumber' : phoneNumber,
                'customerGender' : gender,
            },
          );
  }
   late UserModel currentData;
   void getUserData() async{

     UserModel userModel;
   var value= await FirebaseFirestore.instance
          .collection('customersData')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .get();
          if(value.exists){
            userModel =UserModel(
              email : value.get('customerEmail'),
              image: value.get('customerImage'),
              password: value.get('customerPassword'),  
              uid: value.get('customerUid'),
              gender: value.get('customerGender'),
              phoneNumber: value.get('customerPhoneNumber'),
              address: value.get('customerAddress'),
              firstName: value.get('customerFirstName'),
              lastName: value.get('customerLastName'),

            );
             currentData=userModel;
             notifyListeners();
          }
     
  }
    UserModel get currentUserData{
      return currentData;
    }
}  */