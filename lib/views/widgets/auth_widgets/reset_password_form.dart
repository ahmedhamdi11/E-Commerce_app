import 'package:ecommerce_app/controllers/auth_controllers/reset_password_controller.dart';
import 'package:ecommerce_app/core/functions/check_input_validation.dart';
import 'package:ecommerce_app/core/utils/constants/app_colors.dart';
import 'package:ecommerce_app/core/shared/widgets/default_button.dart';
import 'package:ecommerce_app/core/shared/widgets/default_text_field.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: GetBuilder<ResetPasswordController>(
        builder: (controller) => Form(
          key: controller.formKey,
          child: Column(
            children: [
              // sign in text title
              Text(
                'reset_password'.tr,
                style: Styles.title18,
              ),

              const SizedBox(height: 68.0),

              // new password  field
              DefaultTextField(
                autovalidateMode: controller.autovalidateMode,
                validator: (value) {
                  return checkInputValidation(
                    value: value!,
                    type: ValidationType.password,
                    minLength: 8,
                  );
                },
                autofocus: true,
                hint: 'new_password_hint'.tr,
                labelText: 'new_password'.tr,
                suffix: const Icon(
                  Icons.lock_outline,
                  color: AppColors.greyColor,
                ),
              ),

              const SizedBox(height: 16.0),

              // confirm password field
              DefaultTextField(
                hint: 'confirm_password_hint'.tr,
                labelText: 'confirm_password'.tr,
                suffix: const Icon(
                  Icons.lock_outline,
                  color: AppColors.greyColor,
                ),
              ),

              const SizedBox(height: 28.0),

              // reset password button
              DefaultButton(
                onTap: () => controller.resetPassword(),
                btnText: 'continue'.tr,
              ),

              const SizedBox(height: 32.0),
            ],
          ),
        ),
      ),
    );
  }
}
