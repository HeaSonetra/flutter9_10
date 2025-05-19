

import 'package:get/get.dart';

class AuthController extends GetxController {
      final RxBool isLoading=false.obs;
      final RxBool isLoggeIn=false.obs;
      final RxString email=''.obs;

      final Map<String,String> _user={
        'heasonetra@gmail.com': '123tra',
      };

      Future<void>  login(String email,String password) async{
        isLoading.value=true;
        await Future.delayed(Duration(seconds: 1));

        if(_user[email]==password){
          isLoading.value=true;
          Get.offAllNamed('/home');
          Get.snackbar('Success',"Loggined success");
        }else{
          Get.snackbar('Error','Invalid');
        }
        isLoading.value=false;
      }
}