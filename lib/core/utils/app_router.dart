import 'package:ecommerce_app/core/middleware/my_middleware.dart';
import 'package:ecommerce_app/views/screens/auth/forget_password_screen.dart';
import 'package:ecommerce_app/views/screens/auth/otp_screen.dart';
import 'package:ecommerce_app/views/screens/auth/reset_password_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../../views/screens/auth/signin_screen.dart';
import '../../views/screens/auth/signup_screen.dart';
import '../../views/screens/onboarding_screen.dart';

abstract class AppRouter {
  static const signInScreenRoute = '/signInScreen';
  static const signUpScreenRoute = '/signUpScreen';
  static const forgetPasswordScreenRoute = '/forgetPasswordScreen';
  static const otpScreenRoute = '/otpScreen';
  static const resetPasswordScreenRoute = '/resetPasswordScreen';

  static List<GetPage<dynamic>> getPages = [
    GetPage(
      name: '/',
      page: () => const OnBoardingScreens(),
      middlewares: [MyMiddleware()],
    ),
    GetPage(
      name: signInScreenRoute,
      page: () => const SignInScreen(),
      transition: Transition.fade,
    ),
    GetPage(
      name: signUpScreenRoute,
      page: () => const SignUpScreen(),
    ),
    GetPage(
      name: forgetPasswordScreenRoute,
      page: () => const ForgetPasswordScreen(),
    ),
    GetPage(
      name: otpScreenRoute,
      page: () => const OTPScreen(),
    ),
    GetPage(
      name: resetPasswordScreenRoute,
      page: () => const ResetPasswordScreen(),
    ),
  ];
}
