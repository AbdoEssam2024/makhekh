import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CourseDetailsController extends GetxController
    with GetTickerProviderStateMixin {
  late TabController tabController;

  // RxString btnText = "68".tr.obs;
  // RxInt pageIndex = 0.obs;
  RxString groupVal = "recorded".obs;

  // changeBtnText() {
  //   if (pageIndex.value == 4) {
  //     btnText.value = "6".tr;
  //   } else {
  //     btnText.value = "68".tr;
  //   }
  // }

  // nextPage() {
  //   if (pageIndex.value < 4) {
  //     pageIndex.value++;
  //     tabController.animateTo(pageIndex.value);
  //   } else {
  //     // Get.offNamed(AppRoutesNames.instructorCreateCourseTwo);
  //   }
  //   // changeBtnText();
  // }

  getValue(String value) {
    groupVal.value = value;
  }

  initControllers() {
    tabController = TabController(
        length: 5, vsync: this, animationDuration: Duration(milliseconds: 500));
  }

  @override
  void onInit() {
    initControllers();
    super.onInit();
  }
}