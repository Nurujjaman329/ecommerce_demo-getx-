import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<String> fruits = ['Mango', 'JackFruit', 'Apple'].obs;
  RxList tempFruits = [].obs;

  addFavourite(String value) {
    tempFruits.add(value);
    print(tempFruits);
  }

  removeFavourite(String value) {
    tempFruits.remove(value);
    print(tempFruits);
  }
}
