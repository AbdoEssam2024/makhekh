import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makhekh/main.dart';

class LangController extends GetxController {
  Locale initialLang =
      sharedPreferences.getString('lang') == null
          ? const Locale('ar')
          : Locale(sharedPreferences.getString('lang')!);

  void changeLang(String lang) {
    if (lang == 'en') {
      sharedPreferences.setString('lang', 'en');
      Get.updateLocale(const Locale('en'));
    } else {
      sharedPreferences.setString('lang', 'ar');
      Get.updateLocale(const Locale('ar'));
    }

  }
}
