/* import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kloti_app/models/ProductModel.dart';
import 'ProductModel.dart';

class ProductServices{
  String collection="products";
  Firestore _firestore= Firestore.instance;
  Future<List<ProductModel>> getProducts() async=>
  _firestore.collection(collection).getDocument() then((results)){
    List<ProductModel> products=[];
    for(DocumentSnapshot product in results.documents){
      products.add(ProductModel.fromSnapshot(product));
    }
    return products;
  }

 
} */