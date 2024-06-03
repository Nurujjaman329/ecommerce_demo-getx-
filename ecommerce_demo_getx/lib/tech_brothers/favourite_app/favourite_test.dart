import 'package:ecommerce_demo_getx/tech_brothers/favourite_app/favourite_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavouriteTestScreen extends StatefulWidget {
  const FavouriteTestScreen({super.key});

  @override
  State<FavouriteTestScreen> createState() => _FavouriteTestScreenState();
}

class _FavouriteTestScreenState extends State<FavouriteTestScreen> {
  FavouriteController controller = Get.put(FavouriteController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite Screen"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: controller.fruits.length,
        itemBuilder: (context, index) {
          return Obx(
            () => Card(
              child: ListTile(
                //hoverColor: Colors.grey,
                onTap: () {
                  if (controller.tempFruits
                      .contains(controller.fruits[index].toString())) {
                    controller
                        .removeFavourite(controller.fruits[index].toString());
                  } else {
                    controller
                        .addFavourite(controller.fruits[index].toString());
                  }
                },
                title: Text(controller.fruits[index].toString()),
                trailing: Icon(
                  Icons.favorite,
                  color: controller.tempFruits
                          .contains(controller.fruits[index].toString())
                      ? Colors.red
                      : Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
