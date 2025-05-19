import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:login_signup/routes/app_routes.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Welcome Page",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: ()=>Get.toNamed(AppRoutes.LOGIN), child: Text('Login'))
          ],
        ),
      ),
    );
  }
}
