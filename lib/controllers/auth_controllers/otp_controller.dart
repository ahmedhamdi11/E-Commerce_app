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
  String? otpFormValidator(val) {
    if (val!.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  // on form fields changes
  onOtpFormFieldsChanges(String val, int i, BuildContext context) {
    if (val.length == 1) {
      FocusScope.of(context).nextFocus();
    } else if (val.isEmpty && i > 0) {
      FocusScope.of(context).previousFocus();
    }
    otpCode = controllers.map((e) => e.text).join();
  }

  // verify the otp code
  void verifyCode() {
    if (formKey.currentState!.validate()) {
      Get.defaultDialog(content: Text('otp code is : $otpCode'));
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
