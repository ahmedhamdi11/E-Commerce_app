import 'package:ecommerce_app/core/constants/app_routes.dart';
import 'package:ecommerce_app/views/screens/auth/login_screen.dart';
import 'package:ecommerce_app/views/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.onBoardingRoute: (context) => const OnBoardingScreens(),
  AppRoutes.loginScreenRoute: (context) => const LoginScreen(),
};
