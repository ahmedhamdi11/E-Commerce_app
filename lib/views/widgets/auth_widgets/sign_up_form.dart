import 'package:ecommerce_app/core/constants/app_colors.dart';
import 'package:ecommerce_app/core/shared/components/default_button.dart';
import 'package:ecommerce_app/core/shared/components/default_text_field.dart';
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
          const Text(
            'Sign Up Now',
            style: Styles.title18,
          ),

          const SizedBox(height: 8.0),

          // sign in text body
          const Text(
            'Sign up with your email and passowrd \n to get started',
            style: Styles.bodyGrey14,
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 68.0),

          // username field
          const DefaultTextField(
            hint: 'Enter your username',
            labelText: 'Username',
            keyboardType: TextInputType.emailAddress,
            suffix: Icon(
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
          const DefaultTextField(
            hint: 'Enter your phone number',
            labelText: 'Phone number',
            keyboardType: TextInputType.emailAddress,
            suffix: Icon(
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
            keyboardType: TextInputType.emailAddress,
            suffix: const Icon(
              Icons.lock_open_outlined,
              color: AppColors.greyColor,
            ),
          ),

          const SizedBox(height: 28.0),

          // sign in button
          DefaultButton(
            onTap: () {},
            btnText: 'Sign Up',
          ),
        ],
      ),
    );
  }
}
