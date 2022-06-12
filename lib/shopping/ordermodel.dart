/* import 'package:cloud_firestore/cloud_firestore.dart';

class OrderModel{
  static const ID="id";
  static const UserId="Userid";
  static const Total="total";
  static const Descripton="description";
  static const Quantity="quantity";

  late String  _id;
   late String  _Userid;
     late String  _description;
    late double  _total;
     late int _quantity;

String get id =>_id;
String get description =>_description;
String get image => _Userid;
double get price =>_total;
int get quantity =>_quantity;


OrderModel.fromSnapshot(DocumentSnapshot snapshot){
  _id=snapshot.data[ID];
  _Userid=snapshot.data[UserId];
  _description=snapshot.data[Descripton];
   _total=snapshot.data[Total];
   _quantity=snapshot.data[Quantity];

}


} */