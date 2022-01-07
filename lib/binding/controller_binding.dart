import "package:get/get.dart";
import 'package:getx/controller/advice_controller.dart';
import 'package:getx/controller/dog_controller.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DogCotroller());
    Get.put(AdviceController());
  }
}
