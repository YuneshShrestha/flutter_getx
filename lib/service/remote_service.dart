import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx/model/advice_model.dart';
import 'package:getx/model/dog_model.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  // static var client = http.Client();
  static Future<AdviceModel?> fetchAdvice() async {
    try {
      var response =
          await http.get(Uri.parse("https://api.adviceslip.com/advice"));
      if (response.statusCode == 200) {
        var jsonData = response.body;
        return adviceModelFromJson(jsonData);
      } else {
        return null;
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }

  static Future<List<DogModel>?> fetchDog() async {
    try {
      var response = await http.get(
          Uri.parse("https://api.thedogapi.com/v1/breeds"),
          headers: {"x-api-key": "ABC123"});
      if (response.statusCode == 200) {
        return dogModelFromJson(response.body);
      } else {
        return null;
      }
    } catch (e) {
      Get.snackbar("Message", e.toString());
    }
  }
}
