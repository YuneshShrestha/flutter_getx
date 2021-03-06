import 'package:flutter/material.dart';
import 'package:getx/binding/controller_binding.dart';
import 'package:getx/view/dog.dart';
import 'package:getx/view/home.dart';
import 'package:get/get.dart';
import 'package:getx/view/page1.dart';
import 'package:getx/view/page2.dart';
import 'package:getx/view/page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          titleTextStyle: const TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
          iconTheme: IconTheme.of(context).copyWith(color: Colors.red),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      defaultTransition: Transition.circularReveal,
      transitionDuration: const Duration(seconds: 2),
      initialBinding: ControllerBinding(),
      getPages: [
        GetPage(name: "/", page: () => const Home()),
        GetPage(name: "/page1", page: () => const Page1()),
        GetPage(name: "/page2", page: () => const Page2()),
        GetPage(name: "/page3", page: () => const Page3()),
        GetPage(name: "/dog", page: () => const Dog())
      ],
    );
  }
}
