import 'package:ecommerce_app/core/shared/widgets/default_back_button.dart';
import 'package:ecommerce_app/views/widgets/auth_widgets/lottie_waves.dart';
import 'package:ecommerce_app/views/widgets/auth_widgets/otp_body.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

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
              child: OTPBody(),
            ),
          ),
        ],
      ),
    );
  }
}
