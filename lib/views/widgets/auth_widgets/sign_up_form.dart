import 'package:ecommerce_app/controllers/auth_controllers/sign_up_controller.dart';
import 'package:ecommerce_app/core/functions/check_input_validation.dart';
import 'package:ecommerce_app/core/utils/constants/app_colors.dart';
import 'package:ecommerce_app/core/shared/widgets/default_button.dart';
import 'package:ecommerce_app/core/shared/widgets/default_text_field.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SignUpController signUpController = Get.put(SignUpController());
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Form(
        key: signUpController.formKey,
        child: GetBuilder<SignUpController>(
          builder: (controller) => Column(
            children: [
              // sign in text title
              Text(
                'signup_1'.tr,
                style: Styles.title18,
              ),

              const SizedBox(height: 8.0),

              // sign in text body
              Text(
                'signup_2'.tr,
                style: Styles.bodyGrey14,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 68.0),

              // username field
              DefaultTextField(
                autovalidateMode: controller.autovalidateMode,
                validator: (value) {
                  return checkInputValidation(
                    value: value!,
                    type: ValidationType.username,
                  );
                },
                hint: 'enter_your_username'.tr,
                labelText: 'username'.tr,
                suffix: const Icon(
                  Icons.person_outline,
                  color: AppColors.greyColor,
                ),
              ),

              const SizedBox(height: 16.0),

              // email field
              DefaultTextField(
                autovalidateMode: controller.autovalidateMode,
                validator: (value) {
                  return checkInputValidation(
                    value: value!,
                    type: ValidationType.email,
                  );
                },
                hint: 'signin_3'.tr,
                labelText: 'email'.tr,
                keyboardType: TextInputType.emailAddress,
                suffix: const Icon(
                  Icons.email_outlined,
                  color: AppColors.greyColor,
                ),
              ),

              const SizedBox(height: 16.0),

              // phone number field
              DefaultTextField(
                autovalidateMode: controller.autovalidateMode,
                validator: (value) {
                  return checkInputValidation(
                    value: value!,
                    type: ValidationType.phoneNumber,
                  );
                },
                hint: 'enter_your_phone'.tr,
                labelText: 'phone_number'.tr,
                keyboardType: TextInputType.phone,
                suffix: const Icon(
                  Icons.phone_android,
                  color: AppColors.greyColor,
                ),
              ),

              const SizedBox(height: 16.0),

              // password field
              DefaultTextField(
                autovalidateMode: controller.autovalidateMode,
                validator: (value) {
                  return checkInputValidation(
                    value: value!,
                    type: ValidationType.password,
                    minLength: 8,
                  );
                },
                isPassword: controller.isHiddenPassword,
                hint: 'singnin_4'.tr,
                labelText: 'password'.tr,
                suffix: InkWell(
                  borderRadius: BorderRadius.circular(16.0),
                  onTap: () => controller.togglePasswordVisibility(),
                  child: Icon(
                    controller.isHiddenPassword
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: AppColors.greyColor,
                  ),
                ),
              ),

              const SizedBox(height: 28.0),

              // sign in button
              DefaultButton(
                onTap: () => signUpController.signUp(),
                btnText: 'sign_up'.tr,
              ),

              const SizedBox(height: 8.0),
            ],
          ),
        ),
      ),
    );
  }
}
