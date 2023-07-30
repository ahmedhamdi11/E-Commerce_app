import 'package:ecommerce_app/controllers/onboarding_controller.dart';
import 'package:ecommerce_app/core/shared/components/default_button.dart';
import 'package:ecommerce_app/views/widgets/onboarding/onboarding_page_indicator.dart';
import 'package:ecommerce_app/views/widgets/onboarding/onboarding_page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreens extends StatelessWidget {
  const OnBoardingScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final onBoardingController = Get.put(OnBoardingController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 22.0,
          ),
          child: Column(
            children: [
              // page view
              Expanded(
                child: OnBoardingPageView(
                  pageController: onBoardingController.pageController,
                ),
              ),

              // page indicator
              OnboardingPageIndicator(
                pageController: onBoardingController.pageController,
              ),

              const SizedBox(
                height: 80,
              ),

              DefaultButton(
                onTap: () {
                  onBoardingController.goToNextPage();
                },
                btnText: 'continue'.tr,
              ),

              // skip button
              TextButton(
                onPressed: () {
                  onBoardingController.skipOnBoarding();
                },
                child: Text('skip'.tr),
              ),

              const SizedBox(
                height: 16.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
