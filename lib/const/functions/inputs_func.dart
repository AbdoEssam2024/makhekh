import 'package:get/get.dart';

validInput(String val, int min, int max, String type, String feildName) {
  if (val.isEmpty || val.trim().isEmpty) {
    return ("Please Enter Your".tr + feildName.tr);
  }
  if (val.length < min) {
    return "$feildName ${"Cannot Be Less Than".tr}$min";
  }

  if (val.length > max) {
    return "$feildName${"Cannot Be More Than".tr}$max";
  }

  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "Email Is Not Valid".tr;
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "Phone Is Not Valid".tr;
    }
  }

  if (type == "password") {
    return validatePassword(val);
  }
}


String? validatePassword(String password) {
  if (!password.contains(RegExp(r"[A-Z]"))) {
    return "Password must contain at least one capital letter".tr;
  }
  if (!password.contains(RegExp(r"[a-z]"))) {
    return "Password must contain at least one small letter".tr;
  }
  if (!password.contains(RegExp(r"[0-9]"))) {
    return "Password must contain at least one number".tr;
  }

  return null;
}