import 'package:ecommerce_app/core/utils/constants/app_colors.dart';
import 'package:ecommerce_app/data/data_source/static/static_data.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPageIndicator extends StatelessWidget {
  const OnboardingPageIndicator({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController, // PageController
      count: onBoardingData.length,
      effect: const ExpandingDotsEffect(
        activeDotColor: AppColors.primaryColor,
        dotHeight: 6.0,
        dotWidth: 8.0,
        spacing: 4.0,
      ),
    );
  }
}
