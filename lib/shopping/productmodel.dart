/* import 'package:flutter/material.dart';
import 'ProductServices.dart';
import 'ProductModel.dart';


//import 'package:cloud_firestore/cloud_firestore.dart';

//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:kloti_app/models/ProductModel.dart';
//import 'ProductModel.dart';

class ProductServices{
  String collection="products";

//import 'package:cloud_firestore/cloud_firestore.dart';


class ProductModel{
  static const ID="id";
  static const Name="name";
  static const Image="image";
  static const Price="price";
  static const Category="category";
  static const Descripton="description";

  String  _id;
   String  _name;
    String  _image;
     String  _description;
     String  _category;
     double  _price;

String get id =>_id;
String get name => _name;
String  get category => _category;
String get description =>_description;
String get image => _image;
double get price =>_price;



ProductModel.fromMap(Map data){
_id=data[ID];
_name=data[Name];
_image=data[Image];
_price=data[Price];
_category=data[Category];
_description=data[Descripton];

}
Map toMap()=>{
  ID:_id,
  Name:_name,
  Image:_image,
  Price:_price,
  Category:_category,
  Descripton:_description,


};
 ProductModel.fromSnapshot(DocumentSnapshot snapshot){
  _id=snapshot.data[ID];
  _image=snapshot.data[Image];
  _description=snapshot.data[Descripton];
  _category=snapshot.data[Category];
   _price=snapshot.data[Price];

}

} */