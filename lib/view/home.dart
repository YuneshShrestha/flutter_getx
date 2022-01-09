import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/dog_controller.dart';
import 'package:getx/view/page1.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dogController = Get.put(DogCotroller());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: const [
          Icon(Icons.ac_unit),
        ],
      ),
      body: Wrap(
        // runAlignment: WrapAlignment.spaceBetween,
        // Horizontal spacing
        spacing: 10.0,
        // Vertical spacing
        runSpacing: 10.0,
        // alignment: WrapAlignment.spaceBetween,
        // crossAxisAlignment: WrapCrossAlignment.,
        children: [
          ElevatedButton(
              onPressed: () {
                Get.snackbar("Topic", "message body",
                    snackPosition: SnackPosition.BOTTOM);
              },
              child: const Text("Snack Bar")),
          ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                    title: 'Message',
                    content: const Text("Record Saved Successfully"));
              },
              child: const Text("Dialog")),
          ElevatedButton(onPressed: () {}, child: const Text("Api")),
          ElevatedButton(
              onPressed: () {
                Get.off(const Page1());
              },
              child: const Text("Page 1")),
          ElevatedButton(
              onPressed: () {
                Get.toNamed("/page2");
              },
              child: const Text("Page 2")),
          ElevatedButton(
              onPressed: () {
                Get.toNamed("/page3");
              },
              child: const Text("Page 3")),
          ElevatedButton(
              onPressed: () {
                dogController.dogList();
                Get.toNamed("/dog");
              },
              child: const Text("Dog")),
        ],
      ),
    );
  }
}
