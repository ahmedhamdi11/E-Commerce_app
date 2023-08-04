import 'package:ecommerce_app/core/services/app_serices.dart';
import 'package:ecommerce_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleware extends GetMiddleware {
  @override
  int? get priority => 0;

  AppServices appServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (appServices.prefs.getBool('onboarding') == true) {
      return const RouteSettings(name: AppRouter.signInScreenRoute);
    } else {
      return null;
    }
  }
}
