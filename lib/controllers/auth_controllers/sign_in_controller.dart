import 'package:ecommerce_app/core/utils/app_router.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  void goToSignUpScreen() {
    Get.toNamed(
      AppRouter.signUpScreenRoute,
    );
  }
}
