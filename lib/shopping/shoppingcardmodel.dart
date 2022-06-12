/* import 'package:cloud_firestore/cloud_firestore.dart';
class ShoppingCardModel{
  static const ID="id";
  static const ProductID="productid";
  static const Quantity="quantity";
  static const Price="price";


  String  _id;
   String  _productid;
     int  _quantity;
     double  _price;
     

String get id =>_id;
String get productid =>_productid;
int get quantity =>_quantity;
double get price =>_price;

ShoppingCardModel.fromMap(Map data){
_id=data[ID];
_productid=data[ProductID];
_price=data[Price];
_quantity=data[Quantity];


}
Map toMap()=>{
  ID:_id,
  ProductID:_productid,
  Price:_price,
  Quantity:_quantity,
  

};
} */