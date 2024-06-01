import 'package:get/get.dart';

import '../models/product.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(const Duration(seconds: 1));

    var productResult = [
      Product(
          id: 1,
          productName: "First",
          productImage: "productImage",
          productDescription: "productDescription-01",
          price: 30),
      Product(
          id: 1,
          productName: "Second",
          productImage: "productImage",
          productDescription: "productDescription-02",
          price: 40),
      Product(
          id: 1,
          productName: "Third",
          productImage: "productImage",
          productDescription: "productDescription-03",
          price: 50),
      Product(
          id: 1,
          productName: "Third",
          productImage: "productImage",
          productDescription: "productDescription-03",
          price: 50),
      Product(
          id: 1,
          productName: "Third",
          productImage: "productImage",
          productDescription: "productDescription-03",
          price: 50),
      Product(
          id: 1,
          productName: "Third",
          productImage: "productImage",
          productDescription: "productDescription-03",
          price: 50)
    ];
    products.value = productResult;
  }
}
