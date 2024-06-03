import 'package:get/get.dart';

class SliderController extends GetxController {
  RxDouble opacity = .1.obs;

  setOpacity(double value) {
    opacity.value = value;
  }
}
