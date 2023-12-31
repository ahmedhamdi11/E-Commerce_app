import 'package:ecommerce_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  bool isHiddenPassword = true;

  void togglePasswordVisibility() {
    isHiddenPassword = !isHiddenPassword;
    update();
  }

  // signIn user
  void signInUser() {
    if (formKey.currentState!.validate()) {
    } else {
      autovalidateMode = AutovalidateMode.always;
      update();
    }
  }

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
