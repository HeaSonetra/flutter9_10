import 'package:demo_getx2/controller/movie_controller.dart';
import 'package:demo_getx2/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(MovieController());
  runApp(GetMaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));
}
