import 'package:ecommerce_app/core/utils/constants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieWaves extends StatelessWidget {
  const LottieWaves({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Lottie.asset(
      AppAssets.waveBackground,
      width: w,
      height: h * 0.22,
      fit: BoxFit.fill,
    );
  }
}
