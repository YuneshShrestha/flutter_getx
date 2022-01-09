import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx/model/dog_model.dart';
import 'package:getx/service/remote_service.dart';
// import 'package:http/http.dart' as http;

class DogCotroller extends GetxController {
  var dogList = <DogModel>[].obs;
  var isLoading = true.obs;
  Future getDogList() async {
    try {
      isLoading(true);
      var response = await RemoteService.fetchDog();
      if (response != null) {
        dogList.value = response;
      } else {
        Get.snackbar("Message", "Null Data");
      }
    } catch (e) {
      Get.snackbar("Message", e.toString());
    } finally {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getDogList();
  }
}
