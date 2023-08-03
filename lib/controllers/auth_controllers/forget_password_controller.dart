import 'package:ecommerce_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  void verifyEmailToResetPassword() {
    if (formKey.currentState!.validate()) {
      // send the otp code the user email
      // then go to the otp screen to verify the email
      _goToOtpScreen();
    } else {
      autovalidateMode = AutovalidateMode.always;
      update();
    }
  }

  void _goToOtpScreen() {
    Get.toNamed(AppRouter.otpScreenRoute, arguments: true);
  }
}
