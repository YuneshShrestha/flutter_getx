import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/counter_controller.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var countController = Get.put(CounterController());
    return Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: () {
                countController.increment();
              },
              child: const Text("+"),
            ),
            ElevatedButton(
              onPressed: () {
                countController.decrement();
              },
              child: const Text("-"),
            )
          ],
        ),
        // appBar: AppBar(
        //   title: const Text("Counter App"),
        // ),
        body: Center(
            // String interpolation
            child: Obx(
          () => Text(
            "${countController.count}",
            style: Theme.of(context).textTheme.headline4,
          ),
        )));
  }
}
