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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
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
            isPassword: true,
            hint: 'singnin_4'.tr,
            labelText: 'password'.tr,
            suffix: const Icon(
              Icons.lock_open_outlined,
              color: AppColors.greyColor,
            ),
          ),

          const SizedBox(height: 28.0),

          // sign in button
          DefaultButton(
            onTap: () {},
            btnText: 'sign_up'.tr,
          ),

          const SizedBox(height: 8.0),
        ],
      ),
    );
  }
}
