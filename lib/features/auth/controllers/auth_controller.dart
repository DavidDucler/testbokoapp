import 'package:get/get.dart';
import 'package:testbokotech/features/auth/services/auth_service.dart';

class AuthController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  final AuthService? authService;
  AuthController({this.authService});

  Future<void> login() async {
    await authService!.login().then((value) {
      print(value);
      Get.offAllNamed('/home');
    });
  }
}
