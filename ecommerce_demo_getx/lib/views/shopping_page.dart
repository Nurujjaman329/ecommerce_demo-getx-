import 'package:ecommerce_demo_getx/controllers/cart_controller.dart';
import 'package:ecommerce_demo_getx/controllers/shopping_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShoppingPage extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(
          Icons.add_shopping_cart_outlined,
          color: Colors.black,
        ),
        label: GetX<CartController>(builder: (controller) {
          return Text(
            "${controller.count}",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          );
        }),
      ),
      //FloatingActionButton(
      //  onPressed: () {},
      //  child: GetX<CartController>(builder: (controller) {
      //    return Text(
      //      "${controller.count}",
      //      style: TextStyle(
      //        fontSize: 15,
      //      ),
      //    );
      //  }),
      //),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GetX<ShoppingController>(builder: (controller) {
                return ListView.builder(
                    itemCount: controller.products.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: EdgeInsets.all(12.0),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                          "${controller.products[index].productName}"),
                                      Text(
                                          "${controller.products[index].productDescription}"),
                                    ],
                                  ),
                                  Text(
                                      "Tk ${controller.products[index].price}"),
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  cartController
                                      .addToCart(controller.products[index]);
                                },
                                child: Text("Add To Cart"),
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              }),
            ),
            GetX<CartController>(builder: (controller) {
              return Text(
                "Total Amount ৳ -> ${controller.totalPrice}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              );
            }),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
