import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:flutter/material.dart';
import 'package:getx/controller/dog_controller.dart';

class Dog extends StatelessWidget {
  const Dog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dogController = Get.find<DogCotroller>();
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dog"),
        ),
        body: Obx(() => ListView.builder(
              itemCount: dogController.dogList.length,
              itemBuilder: (BuildContext context, int index) {
                if (dogController.isLoading.value == true) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return Card(
                    child: Text(dogController.dogList[index]['name']),
                  );
                }
              },
            )));
  }
}
