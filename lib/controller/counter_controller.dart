import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;
  var max = 10;
  var min = 0;
  void increment() {
    if (count < max) {
      count++;
    } else {
      Get.snackbar("Warning", "Value cannot excced $max");
    }
  }

  void decrement() {
    if (count > min) {
      count--;
    } else {
      Get.snackbar("Warning", "Value cannot excced $min");
    }
  }
}
