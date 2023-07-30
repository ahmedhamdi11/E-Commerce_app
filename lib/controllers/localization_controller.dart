import 'package:ecommerce_app/core/services/app_serices.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalizationController extends GetxController {
  late Locale locale;
  AppServices appServices = Get.find();

  void changeLanguage(String languageCode) {
    locale = Locale(languageCode);
    appServices.prefs.setString('lang', languageCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String langCode =
        appServices.prefs.getString('lang') ?? Get.deviceLocale!.languageCode;
    locale = Locale(langCode);
    super.onInit();
  }
}
