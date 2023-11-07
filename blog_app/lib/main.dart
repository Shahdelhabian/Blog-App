import 'package:blog_app/Controller/controller.dart';
import 'package:blog_app/View/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


PostController PC = Get.put(PostController()); 
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
