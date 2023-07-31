import 'package:ecommerce_app/core/shared/widgets/default_back_button.dart';
import 'package:ecommerce_app/views/widgets/auth_widgets/forget_password_form.dart';
import 'package:ecommerce_app/views/widgets/auth_widgets/lottie_waves.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              LottieWaves(),
              DefaultBackButton(),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: ForgetPasswordForm(),
            ),
          ),
        ],
      ),
    );
  }
}
