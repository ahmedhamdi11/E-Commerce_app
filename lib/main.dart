import 'package:ecommerce_app/controllers/localization_controller.dart';
import 'package:ecommerce_app/core/utils/constants/app_colors.dart';
import 'package:ecommerce_app/core/localization/translations.dart';
import 'package:ecommerce_app/core/services/app_serices.dart';
import 'package:ecommerce_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalizationController controller = Get.put(LocalizationController());
    return GetMaterialApp(
      defaultTransition: Transition.rightToLeftWithFade,
      debugShowCheckedModeBanner: false,
      title: 'e-commerce',
      translations: AppTranslations(),
      locale: controller.locale,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
        fontFamily: 'Jannah',
      ),
      initialRoute: AppRouter.onBoardingRoute,
      getPages: AppRouter.getPages,
    );
  }
}
