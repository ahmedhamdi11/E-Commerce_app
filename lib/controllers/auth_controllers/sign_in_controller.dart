import 'package:ecommerce_app/core/constants/app_routes.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  void goToSignUpScreen() {
    Get.toNamed(
      AppRoutes.signUpScreenRoute,
    );
  }
}
