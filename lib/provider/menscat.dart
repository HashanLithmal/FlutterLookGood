import 'package:flutter_look_good_assignment/models/product.dart';
import 'package:flutter_look_good_assignment/db/mens.dart';
import 'package:flutter/material.dart';

class ProductProviderMens with ChangeNotifier {
  ProductServices _productServices = ProductServices();
  List<ProductModel> products = [];
  List<ProductModel> productsSearched = [];

  ProductProviderMens.initialize() {
    loadProducts();
  }

  loadProducts() async {
    products = await _productServices.getProducts();
    notifyListeners();
  }

  Future search({String productName}) async {
    productsSearched =
        await _productServices.searchProducts(productName: productName);
    notifyListeners();
  }
}
