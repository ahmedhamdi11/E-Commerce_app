import 'package:ecommerce_app/core/utils/app_router.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController {
  void gotToOtpScreen() {
    Get.toNamed(AppRouter.otpScreenRoute);
  }
}
