import 'package:ecommerce_app/controllers/auth_controllers/otp_controller.dart';
import 'package:ecommerce_app/core/shared/widgets/default_button.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'otp_form_fields.dart';

class OTPBody extends StatelessWidget {
  const OTPBody({
    super.key,
    required this.isResetPassword,
  });
  final bool isResetPassword;
  @override
  Widget build(BuildContext context) {
    OtpController otpController = Get.put(OtpController());
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          // otp text title
          Text(
            'verify_your_email'.tr,
            style: Styles.title18,
          ),

          const SizedBox(height: 8.0),

          // otp text body
          Text(
            '${'otp_body_text'.tr} ahmed@gmail.ocm',
            style: Styles.bodyGrey14,
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 68.0),

          // otp field
          const OtpFormFields(),

          const SizedBox(height: 48.0),

          // sign in button
          DefaultButton(
            onTap: () {
              isResetPassword
                  ? otpController.verifyEmailToResetPassword()
                  : otpController.verifyEmailToRegister();
            },
            btnText: 'continue'.tr,
          ),

          const SizedBox(
            height: 32.0,
          ),
        ],
      ),
    );
  }
}
