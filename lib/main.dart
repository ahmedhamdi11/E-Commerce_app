import 'package:ecommerce_app/controllers/localization_controller.dart';
import 'package:ecommerce_app/core/utils/app_themes.dart';
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
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      getPages: AppRouter.getPages,
    );
  }
}
