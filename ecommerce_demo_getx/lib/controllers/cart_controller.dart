import 'package:get/get.dart';

import '../models/product.dart';

class CartController extends GetxController {
  var cartItems = <Product>[].obs;
  int get count => cartItems.length;
  double get totalPrice => cartItems.fold(0, (sum, items) => sum + items.price);

  addToCart(Product product) {
    cartItems.add(product);
  }
}
