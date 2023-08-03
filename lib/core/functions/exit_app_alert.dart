import 'package:get/get.dart';

Future<bool> exitAppAlert() async {
  return await Get.defaultDialog(
        title: 'Alert',
        middleText: 'Are you sure you want to exit',
        textCancel: 'No',
        textConfirm: 'Yes',
        onConfirm: () => Get.back(result: true),
      ) ??
      false;
}
