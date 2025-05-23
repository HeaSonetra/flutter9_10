import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthController extends GetxController {
  final RxBool isLoading = false.obs;
  final RxBool isLoggeIn = false.obs;
  final RxString email = ''.obs;
  final box = GetStorage();

  @override
  void onInit() {
    super.onInit();
    GetStorage.init(); // Initialize GetStorage
  }

  Future<void> login(String email, String password) async {
    isLoading.value = true;
    await Future.delayed(Duration(seconds: 1));
    final storedPassword = box.read(email);
    if (storedPassword!=null&&storedPassword==password) {
      isLoading.value = true;
      Get.offAllNamed('/home');
      Get.snackbar('Success', "Loggined success");
    } else {
      Get.snackbar('Error', 'Invalid');
    }
    isLoading.value = false;
  }

  Future<void> signup(
    String email,
    String password,
    String confirmPassword,
  ) async {
    isLoading.value = true;
    await Future.delayed(Duration(seconds: 1));

    if (password == confirmPassword) {
      box.write(email, password);// Save email and password
      Get.snackbar('Success', "Signup successful");
      Get.offAllNamed('/login');
    } else {
      Get.snackbar('Error', 'Passwords do not match');
    }

    isLoading.value = false;
  }
}
