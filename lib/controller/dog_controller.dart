import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DogCotroller extends GetxController {
  var dogList = [].obs;
  var isLoading = true.obs;
  Future getDogList() async {
    try {
      isLoading(true);
      var response =
          await http.get(Uri.parse("https://api.thedogapi.com/v1/breeds"));
      dogList.value = jsonDecode(response.body);
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
