import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:login_signup/routes/app_page.dart';
import 'package:login_signup/routes/app_routes.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.INITIAL,
      getPages: AppPage.routes,
    )
  );
}
