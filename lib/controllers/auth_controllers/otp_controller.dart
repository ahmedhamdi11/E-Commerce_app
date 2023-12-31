import 'package:ecommerce_app/core/functions/show_default_snackbar.dart';
import 'package:ecommerce_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpController extends GetxController {
  // fields controllers
  late List<TextEditingController> controllers;

  late GlobalKey<FormState> formKey; // form key

  // validate mode
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  late String otpCode; // otp code

// form fields validator
  String? otpInputValidator(val) {
    if (val!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  // on form fields changes
  onOtpFormFieldsChanges(String val, int index, BuildContext context) {
    if (val.length == 1) {
      FocusScope.of(context).nextFocus();
    } else if (val.isEmpty && index > 0) {
      FocusScope.of(context).previousFocus();
    }
    otpCode = controllers.map((e) => e.text).join();
  }

  // verify the otp code to reset password
  void verifyEmailToResetPassword() {
    if (formKey.currentState!.validate()) {
      // verify code first ...
      // if it is verified then go to the reset password screen
      Get.offNamed(AppRouter.resetPasswordScreenRoute);
    } else {
      autovalidateMode = AutovalidateMode.always;
      update();
    }
  }

  // verify the otp code to register
  void verifyEmailToRegister() {
    if (formKey.currentState!.validate()) {
      // verify code first ...
      // if it is verified then register the account
      // then navigate to the sign in screen to sing in

      // show success message in the default snack bar
      showDefaultSnackBar(
        title: 'success'.tr,
        message: 'register_success'.tr,
      );

      // go to sing in screen
      Get.offAllNamed(
        AppRouter.signInScreenRoute,
      );
    } else {
      autovalidateMode = AutovalidateMode.always;
      update();
    }
  }

  @override
  void onInit() {
    controllers = List.generate(5, (index) => TextEditingController());
    formKey = GlobalKey<FormState>();
    super.onInit();
  }

  @override
  void dispose() {
    for (int i = 0; i < controllers.length; i++) {
      controllers[i].dispose();
    }
    super.dispose();
  }
}
