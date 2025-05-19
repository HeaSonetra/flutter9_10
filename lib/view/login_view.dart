import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup/controller/auth_controller.dart';
import 'package:login_signup/widget/auth_text_field.dart';

class LoginView extends StatelessWidget {
  final AuthController _auth=Get.find();
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _password=TextEditingController();
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login View',style: TextStyle(fontSize: 30),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
                SizedBox(height: 260,),
                AuthTextField(
                  controller: _emailController, 
                  label: 'Email', 
                  icon:Icons.email, 
                ),
                SizedBox(height: 20,),
                AuthTextField(
                  controller: _password, 
                  label: 'Password', 
                  icon:Icons.lock, 
                ),
                SizedBox(height: 20,),
                Obx(()=>
                      _auth.isLoading.value?
                      CircularProgressIndicator()
                      :ElevatedButton(
                        onPressed:(){
                          _auth.login(
                            _emailController.text.trim(),
                            _password.text.trim()
                          );
                        }, child: Text('Login',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)
                      )
                    )
            ],
          ),
        ),
    );
  }
}