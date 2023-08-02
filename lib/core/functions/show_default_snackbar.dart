import 'package:flutter/material.dart';
import 'package:get/get.dart';

SnackbarController showDefaultSnackBar({
  required String title,
  required String message,
}) {
  return Get.snackbar(
    title,
    message,
    colorText: Colors.white,
    duration: const Duration(seconds: 4),
    animationDuration: const Duration(milliseconds: 500),
  );
}
