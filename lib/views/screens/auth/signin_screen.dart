import 'package:ecommerce_app/core/functions/exit_app_alert.dart';
import 'package:ecommerce_app/views/widgets/auth_widgets/lottie_waves.dart';
import 'package:ecommerce_app/views/widgets/auth_widgets/sign_in_form.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WillPopScope(
        onWillPop: exitAppAlert,
        child: Column(
          children: [
            LottieWaves(),
            Expanded(
              child: SingleChildScrollView(
                child: SignInForm(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
