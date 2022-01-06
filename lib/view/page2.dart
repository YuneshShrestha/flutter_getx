import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
                onPressed: () {
                  if (count < 10) {
                    count++;
                  } else {
                    Get.snackbar("Warning", "Value will go upto 10",
                        snackPosition: SnackPosition.BOTTOM);
                  }
                  // print(count);
                  setState(() {});
                },
                child: const Text("+")),
            ElevatedButton(
                onPressed: () {
                  if (count > 0) {
                    count--;
                  } else {
                    Get.snackbar("Warning", "Value will go upto 0",
                        snackPosition: SnackPosition.BOTTOM);
                  }
                  // print(count);
                  setState(() {});
                },
                child: const Text("-"))
          ],
        ),
        appBar: AppBar(
          title: const Text("Counter App"),
        ),
        body: Center(
          // String interpolation
          child: Text("$count"),
        ));
  }
}
