import 'package:ecommerce_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController {
  GlobalKey<FormState> verifyEmailFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> updatePasswordFormKey = GlobalKey<FormState>();
  AutovalidateMode verifyEmailValidateMode = AutovalidateMode.disabled;
  AutovalidateMode updatePasswordValidateMode = AutovalidateMode.disabled;

  // update the user password with the new password
  void updatePassword() {
    if (updatePasswordFormKey.currentState!.validate()) {
    } else {
      updatePasswordValidateMode = AutovalidateMode.always;
      update();
    }
  }

  void verifyEmailToResetPassword() {
    if (verifyEmailFormKey.currentState!.validate()) {
      // send the otp code the user email
      // then go to the otp screen to verify the email

      goToOtpScreen();
    } else {
      verifyEmailValidateMode = AutovalidateMode.always;
      update();
    }
  }

  void goToOtpScreen() {
    Get.toNamed(AppRouter.otpScreenRoute, arguments: true);
  }

  // navigate to the forget password screen
  void goToForgetPasswordScreen() {
    Get.toNamed(
      AppRouter.forgetPasswordScreenRoute,
    );
  }
}
