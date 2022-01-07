import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/advice_controller.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var adviceController = Get.put(AdviceController());
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            adviceController.getAdvice();
          },
          child: const Icon(Icons.refresh),
        ),
        appBar: AppBar(
          title: const Text("Advice"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Center(
            child: Obx(() {
              if (adviceController.loading.value == false) {
                return Text(
                  adviceController.advice['slip']['advice'],
                  textScaleFactor: 1.5,
                );
              } else {
                return const CircularProgressIndicator();
              }
            }),
          ),
        ));
  }
}
