import 'package:ecommerce_app/core/utils/constants/app_assets.dart';
import 'package:ecommerce_app/core/shared/widgets/default_back_button.dart';
import 'package:ecommerce_app/views/widgets/auth_widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Lottie.asset(
                AppAssets.waveBackground,
                width: w,
                height: h * 0.22,
                fit: BoxFit.fill,
              ),
              const DefaultBackButton(),
            ],
          ),
          const Expanded(
            child: SingleChildScrollView(
              child: SignUpForm(),
            ),
          ),
        ],
      ),
    );
  }
}
