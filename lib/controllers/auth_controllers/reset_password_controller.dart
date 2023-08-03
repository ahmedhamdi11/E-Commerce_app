import 'package:ecommerce_app/core/functions/show_default_snackbar.dart';
import 'package:ecommerce_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  void resetPassword() {
    if (formKey.currentState!.validate()) {
      // reset the user password then go to the signin screen
      _goToSignInScreen();
      showDefaultSnackBar(
        title: 'success'.tr,
        message: 'password_reset_success'.tr,
      );
    } else {
      autovalidateMode = AutovalidateMode.always;
      update();
    }
  }

  void _goToSignInScreen() {
    Get.offAllNamed(AppRouter.signInScreenRoute);
  }
}
