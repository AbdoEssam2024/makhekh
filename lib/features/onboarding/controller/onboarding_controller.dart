import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/localilazion/language_controller.dart';
import 'package:makhekh/const/route/routes_names.dart';
import 'package:makhekh/main.dart';

class OnboardingController extends GetxController {
  String buttonText = 'Next';
  int currentPageIndex = 0;
  late PageController pageController;
  RxString selectedLanguage = LangController().initialLang.toString().obs;

  initControllers() {
    pageController = PageController();
  }

  void changeLanguage(String language) {
    selectedLanguage.value = language;
    LangController().changeLang(selectedLanguage.value);
  }

  onChangePage(int val) {
    currentPageIndex = val;
    if (currentPageIndex == 2) {
      buttonText = "Get Started";
    } else {
      buttonText = "Next";
    }
    update();
  }

  goToNextPage() {
    currentPageIndex++;
    if (currentPageIndex > 2) {
      goToLoginPage();
    } else {
      pageController.animateToPage(
        currentPageIndex,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  goToOnboardingPage() {
    Get.toNamed(RoutesNames.onboarding);
  }

  goToLoginPage() {
    sharedPreferences.setInt("visit", 1);
    Get.offAllNamed(RoutesNames.login);
    Get.delete<OnboardingController>();
  }

  @override
  void onInit() {
    initControllers();
    super.onInit();
  }
}
