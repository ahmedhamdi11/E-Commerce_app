import 'package:ecommerce_app/core/utils/app_router.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  // navigate to the sign up screen
  void goToSignUpScreen() {
    Get.toNamed(
      AppRouter.signUpScreenRoute,
    );
  }

  // navigate to the forget password screen
  void goToForgetPasswordScreen() {
    Get.toNamed(
      AppRouter.forgetPasswordScreenRoute,
    );
  }
}
