import 'dart:convert';
import 'dart:io';

import "package:get/get.dart";
import 'package:http/http.dart' as http;

class AdviceController extends GetxController {
  var advice = {}.obs;
  var loading = true.obs;
  Future getAdvice() async {
    try {
      loading(true);
      var data = await http.get(Uri.parse('https://api.adviceslip.com/advice'));
      advice.value = jsonDecode(data.body);
    } catch (e) {
      if (e is SocketException) {
        Get.snackbar("", "No Internet Connection");
      }
    } finally {
      loading(false);
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getAdvice();
  }
}
