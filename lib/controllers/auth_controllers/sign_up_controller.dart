import 'package:ecommerce_app/core/utils/app_router.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  void signUp() {
    // after signup success navigate to otp screen
    // to verify the emaill adress

    Get.offNamed(
      AppRouter.otpScreenRoute,
      arguments: false,
    );
  }
}
