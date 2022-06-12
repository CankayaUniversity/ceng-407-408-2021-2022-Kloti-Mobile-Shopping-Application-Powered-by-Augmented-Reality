/* import 'package:flutter/material.dart';
import 'package:flutter_kloti/shopping/productservice.dart';
import 'ProductServices.dart';
import 'ProductModel.dart';


//import 'package:cloud_firestore/cloud_firestore.dart';

//import 'package:kloti_app/models/ProductModel.dart';
//import 'package:kloti_app/service/ProductServices.dart';
class ProductProvider with ChangeNotifier{
  ProductServices _productServices=ProductServices();
  List<ProductModel> products=[];
  List<ProductModel>productByCategory=[];

  ProductProvider.initialize(){
    loadProducts();
  }
  loadProducts()async{
    products= await _productServices.getProducts();
     notifyListeners();
  }
  /*Future loadProductsByCategory({String categoryName})async{
    loadProductsByCategory=await_productServices.getProductsOfCategory(category:categoryName);
    notifyListeners();*/
} */