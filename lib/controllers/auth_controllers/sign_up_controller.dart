import 'package:ecommerce_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  // signIn user
  void signUp() {
    if (formKey.currentState!.validate()) {
      // after signup success navigate to otp screen
      // to verify the emaill adress

      Get.offNamed(
        AppRouter.otpScreenRoute,
        arguments: false,
      );
    } else {
      autovalidateMode = AutovalidateMode.always;
      update();
    }
  }
}
