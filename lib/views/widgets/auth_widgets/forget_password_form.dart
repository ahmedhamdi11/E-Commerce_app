import 'package:ecommerce_app/controllers/auth_controllers/forget_password_controller.dart';
import 'package:ecommerce_app/core/functions/check_input_validation.dart';
import 'package:ecommerce_app/core/utils/constants/app_colors.dart';
import 'package:ecommerce_app/core/shared/widgets/default_button.dart';
import 'package:ecommerce_app/core/shared/widgets/default_text_field.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordForm extends StatelessWidget {
  const ForgetPasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ForgetPasswordController forgetPasswordController = Get.find();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          // sign in text title
          Text(
            'forgot_password'.tr,
            style: Styles.title18,
          ),

          const SizedBox(height: 8.0),

          // sign in text body
          Text(
            'eter_your_email_to_reset_password'.tr,
            style: Styles.bodyGrey14,
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 68.0),

          // email field
          GetBuilder<ForgetPasswordController>(
            builder: (controller) => Form(
              key: controller.formKey,
              child: DefaultTextField(
                autovalidateMode: controller.autovalidateMode,
                validator: (value) {
                  return checkInputValidation(
                    value: value!,
                    type: ValidationType.email,
                  );
                },
                autofocus: true,
                hint: 'signin_3'.tr,
                labelText: 'email'.tr,
                keyboardType: TextInputType.emailAddress,
                suffix: const Icon(
                  Icons.email_outlined,
                  color: AppColors.greyColor,
                ),
              ),
            ),
          ),

          const SizedBox(height: 22.0),

          // verify email  button
          DefaultButton(
            onTap: () => forgetPasswordController.verifyEmailToResetPassword(),
            btnText: 'continue'.tr,
          ),

          const SizedBox(height: 32.0),
        ],
      ),
    );
  }
}
