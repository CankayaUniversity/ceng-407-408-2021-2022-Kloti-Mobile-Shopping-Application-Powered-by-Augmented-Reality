/* 
//import 'package:kloti_app/models/OrderModel.dart';
//import 'package:kloti_app/models/ShoppingCardModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_kloti/shopping/ordermodel.dart';
import 'package:flutter_kloti/shopping/shoppingcardmodel.dart';

class OrderService{
  String collection="orders";
  FirebaseFirestore _firestore=FirebaseFirestore.instance;
   void createOrder({String Userid, String id,String description,List<ShoppingCardModel> card,  int totalPrice>}){
     List<Map> conventedCard=[];

     for(ShoppingCardModel item in card){
       conventedCard.add(item.toMap());

     }

     _firestore.collection(collection).doc(id).set({
      "userId":Userid,
      "id":id,
      "card":conventedCard,
      "total":totalPrice,


     });

    

   }

   Future<List<OrderModel>>getUserOrder({String userId})  async =>
   _firestore
   .collection(collection)
   .where("userId",isEqual:userId)
   .getDocument()
   .then ((result)) {
     List<OrderModel> orders=[];
     for(DocumentSnapshot order in result.document){
       orders.add(OrderModel.fromSnapshot(order));
     }
     return orders;
   }
} */