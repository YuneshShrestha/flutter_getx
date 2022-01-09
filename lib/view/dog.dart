import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:flutter/material.dart';
import 'package:getx/controller/dog_controller.dart';
import 'package:getx/utils/string.dart';

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
                    child: Row(
                      children: [
                        Expanded(
                          child: FadeInImage(
                            placeholder: AssetImage(AppString.noImage),
                            image: NetworkImage(
                                dogController.dogList[index].image!.url),
                          ),
                        ),
                        // child: Image.network(
                        //     dogController.dogList[index].image!.url)),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(dogController.dogList[index].name!)
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }
              },
            )));
  }
}
