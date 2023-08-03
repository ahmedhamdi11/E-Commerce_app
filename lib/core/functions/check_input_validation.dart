import 'package:get/get.dart';

String? checkInputValidation({
  required String value,
  ValidationType? type,
  int minLength = 0,
  int maxLength = 80,
}) {
  // if the input is empty
  if (value.isEmpty) {
    return 'cannot_be_empty'.tr;
  }

  // if the input is less than the minLength
  if (value.length < minLength) {
    return '${'cannot_be_less'.tr} $minLength';
  }

  // if the input is grater than the maxLength
  if (value.length > maxLength) {
    return '${'cannot_be_grater'.tr} $maxLength';
  }

  // check on the type validation
  switch (type) {
    case ValidationType.username:
      if (GetUtils.isUsername(value)) {
        return null;
      } else {
        return 'not_valid_username'.tr;
      }
    case ValidationType.email:
      if (GetUtils.isEmail(value)) {
        return null;
      } else {
        return 'not_valid_email'.tr;
      }
    case ValidationType.password:
      if (!value.contains(RegExp(r'[0-9]'))) {
        return 'password_must_have_number'.tr;
      } else if (!value.contains(RegExp(r'[A-Z]'))) {
        return 'password_must_have_uppercase'.tr;
      } else if (!value.contains(RegExp(r'[a-z]'))) {
        return 'password_must_have_lowercase'.tr;
      } else if (!value.contains(RegExp(r'[!@#$%^&*(),.?:{}|<>]'))) {
        return 'must_have_special_character'.tr;
      } else {
        return null;
      }
    case ValidationType.phoneNumber:
      if (GetUtils.isPhoneNumber(value)) {
        return null;
      } else {
        return 'not_valid_phone'.tr;
      }
    default:
      return null;
  }
}

enum ValidationType {
  username,
  email,
  password,
  phoneNumber,
}
