import 'package:get/get.dart';

class SwitchController extends GetxController {
  final notifications = false.obs;

  switchChange(bool value) {
    notifications.value = value;
    print(notifications.value);
  }
}
