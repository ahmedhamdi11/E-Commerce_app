import 'package:ecommerce_app/controllers/auth_controllers/sign_in_controller.dart';
import 'package:ecommerce_app/core/utils/constants/app_colors.dart';
import 'package:ecommerce_app/core/shared/widgets/default_button.dart';
import 'package:ecommerce_app/core/shared/widgets/default_text_field.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SignInController signInController = Get.put(SignInController());
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          // sign in text title
          Text(
            'signin_1'.tr,
            style: Styles.title18,
          ),

          const SizedBox(height: 8.0),

          // sign in text body
          Text(
            'signin_2'.tr,
            style: Styles.bodyGrey14,
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 68.0),

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

          // forgot password row
          Row(
            children: [
              Text(
                'forgot_password'.tr,
                style: Styles.bodyGrey14,
              ),
              TextButton(
                onPressed: () => signInController.goToForgetPasswordScreen(),
                child: Text('click_here'.tr),
              ),
            ],
          ),

          const SizedBox(height: 12.0),

          // sign in button
          DefaultButton(
            onTap: () {},
            btnText: 'sign_in'.tr,
          ),

          const SizedBox(
            height: 32.0,
          ),

          // sign up button
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'dont_have_an_account'.tr,
                style: Styles.bodyGrey14,
              ),
              TextButton(
                onPressed: () => signInController.goToSignUpScreen(),
                child: Text('sign_up'.tr),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
