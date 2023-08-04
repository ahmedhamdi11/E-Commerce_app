import 'package:ecommerce_app/core/services/app_serices.dart';
import 'package:ecommerce_app/core/utils/app_router.dart';
import 'package:ecommerce_app/data/data_source/static/static_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  late PageController pageController;
  bool isLastPage = false;
  AppServices appServices = Get.find();

  void goToNextPage() {
    if (isLastPage) {
      Get.offAllNamed(AppRouter.signInScreenRoute);
      appServices.prefs.setBool('onboarding', true);
    } else {
      pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastEaseInToSlowEaseOut,
      );
    }
  }

  void skipOnBoarding() {
    Get.offAllNamed(AppRouter.signInScreenRoute);
    appServices.prefs.setBool('onboarding', true);
  }

  @override
  void onInit() {
    pageController = PageController();

    pageController.addListener(() {
      if (pageController.page == onBoardingData.length - 1) {
        isLastPage = true;
      } else {
        isLastPage = false;
      }
    });

    super.onInit();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
