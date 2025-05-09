import 'package:demo_getx/controller/movie_controller.dart';
import 'package:demo_getx/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(MovieController()); 
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}
