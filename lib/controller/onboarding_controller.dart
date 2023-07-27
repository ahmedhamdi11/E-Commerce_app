import 'package:ecommerce_app/core/constants/app_routes.dart';
import 'package:ecommerce_app/data/data_source/static/static_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  late PageController pageController;
  bool isLastPage = false;

  void goToNextPage() {
    if (isLastPage) {
      Get.offAllNamed(AppRoutes.loginScreenRoute);
    } else {
      pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastEaseInToSlowEaseOut,
      );
    }
  }

  void skipOnBoarding() {
    Get.offAllNamed(AppRoutes.loginScreenRoute);
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
