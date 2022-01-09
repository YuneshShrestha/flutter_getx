// import 'dart:convert';
// import 'dart:io';

// import 'dart:core';
// import 'dart:developer';
import "package:get/get.dart";
import 'package:getx/model/advice_model.dart';
import 'package:getx/service/remote_service.dart';
// import 'package:http/http.dart' as http;

class AdviceController extends GetxController {
  var advice = AdviceModel(slip: Slip(id: 0, advice: "")).obs;
  var loading = true.obs;
  Future getAdvice() async {
    try {
      loading(true);
      var data = await RemoteService.fetchAdvice();
      if (data != null) {
        // print(data);
        // log(data);
        advice.value = data;
      } else {
        Get.snackbar("Message", "Null Data");
      }
    } catch (e) {
      // if (e is SocketException) {
      Get.snackbar("Message", e.toString());
      // }
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
