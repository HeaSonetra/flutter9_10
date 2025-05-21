import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:login_signup/controller/auth_controller.dart';
import 'package:login_signup/widget/auth_text_field.dart';

class SignupView extends StatelessWidget {
  final AuthController _authController = Get.find();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text('SignUp View', style: TextStyle(fontSize: 30)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(  
              children: [
                SizedBox(height: 260),
                AuthTextField(
                  controller: _emailController,
                  label: 'Email',
                  icon: Icons.email,
                ),
                SizedBox(height: 20),
                AuthTextField(
                  controller: _password,
                  label: 'Password',
                  icon: Icons.lock,
                ),
                SizedBox(height: 20),
                AuthTextField(
                  controller: _confirmPassword,
                  label: 'Confirm Password',
                  icon: Icons.lock,
                ),
                SizedBox(height: 20),
                Obx(
                  () =>
                      _authController.isLoading.value
                          ? CircularProgressIndicator()
                          : ElevatedButton(
                            onPressed: () {
                              if (_password.text != _confirmPassword.text) {
                                Get.snackbar('Error', 'Password do not match');
                                return;
                              }
                            },
                            child: Text("SignUp"),
                          ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
