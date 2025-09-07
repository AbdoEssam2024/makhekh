import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/route/routes_names.dart';

class CreateCourseOneController extends GetxController
    with GetTickerProviderStateMixin {
  late TabController tabController;

  RxString btnText = "Next".tr.obs;

  RxInt pageIndex = 0.obs;
  RxString groupVal = "recorded".obs;

  changeBtnText() {
    if (pageIndex.value == 3) {
      btnText.value = "Get Started".tr;
    } else {
      btnText.value = "Next".tr;
    }
  }

  nextPage() {
    if (pageIndex.value < 3) {
      pageIndex.value++;
      tabController.animateTo(pageIndex.value);
    } else {
      Get.offNamed(RoutesNames.instructorCreateCourseTwo);
    }
    changeBtnText();
  }

  getValue(String value) {
    groupVal.value = value;
  }

  initControllers() {
    tabController = TabController(
        length: 4, vsync: this, animationDuration: Duration(milliseconds: 500));
  }

  @override
  void onInit() {
    initControllers();
    super.onInit();
  }
}