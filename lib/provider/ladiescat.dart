import 'package:flutter_look_good_assignment/models/product.dart';
import 'package:flutter_look_good_assignment/db/ladies.dart';
import 'package:flutter/material.dart';

class ProductProviderladies with ChangeNotifier {
  ProductServices _productServices = ProductServices();
  List<ProductModel> products = [];
  List<ProductModel> productsSearched = [];

  ProductProviderladies.initialize() {
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
