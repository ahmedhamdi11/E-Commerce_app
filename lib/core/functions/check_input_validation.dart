import 'package:get/get.dart';

String? checkInputValidation({
  required String value,
  ValidationType? type,
  int minLength = 0,
  int maxLength = 80,
}) {
  // if the input is empty
  if (value.isEmpty) {
    return 'This field cannot be empty';
  }

  // if the input is less than the minLength
  if (value.length < minLength) {
    return 'can\'t be less than $minLength';
  }

  // if the input is grater than the maxLength
  if (value.length > maxLength) {
    return 'can\'t be grater than $maxLength';
  }

  // check on the type validation
  switch (type) {
    case ValidationType.username:
      if (GetUtils.isUsername(value)) {
        return null;
      } else {
        return 'Not valid username';
      }
    case ValidationType.email:
      if (GetUtils.isEmail(value)) {
        return null;
      } else {
        return 'Not valid email';
      }
    case ValidationType.password:
      if (!value.contains(RegExp(r'[0-9]'))) {
        return 'password must have at least 1 number';
      } else if (!value.contains(RegExp(r'[A-Z]'))) {
        return 'password must have at least 1 uppercase';
      } else if (!value.contains(RegExp(r'[a-z]'))) {
        return 'password must have at least 1 lowercase';
      } else if (!value.contains(RegExp(r'[!@#$%^&*(),.?:{}|<>]'))) {
        return 'password must have at least 1 special character';
      } else {
        return null;
      }
    case ValidationType.phoneNumber:
      if (GetUtils.isPhoneNumber(value)) {
        return null;
      } else {
        return 'Not valid phone number';
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
