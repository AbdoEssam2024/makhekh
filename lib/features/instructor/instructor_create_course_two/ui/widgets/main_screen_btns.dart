import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makhekh/features/instructor/instructor_create_course_two/controller/create_course_two_controller.dart';
import 'package:makhekh/const/colors/colors.dart';


class MainScreenSingleBtn extends GetView<CreateCourseTwoController> {
  const MainScreenSingleBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.h),
      child: MaterialButton(
        textColor: AppColors.whiteColor,
        padding: EdgeInsets.symmetric(
            horizontal: 60.w,
            vertical: 20.h),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: AppColors.primaryColor,
        onPressed: () {
          controller.nextPage();
        },
        child: Obx(() => Text(
              controller.btnText.value,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            )),
      ),
    );
  }
}

class MainScreenDoubleBtn extends GetView<CreateCourseTwoController> {
  const MainScreenDoubleBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CostumBtn(
          btnColor: AppColors.whiteColor,
          textColor: AppColors.primaryColor,
          text: "Save".tr,
          borderColor: AppColors.primaryColor,
        ),
        Obx(() => CostumBtn(
              btnColor: AppColors.primaryColor,
              textColor: AppColors.whiteColor,
              text: controller.btnText.value,
            )),
      ],
    );
  }
}

class CostumBtn extends GetView<CreateCourseTwoController> {
  final Color btnColor;
  final Color textColor;
  final Color borderColor;
  final String text;
  const CostumBtn({
    super.key,
    required this.btnColor,
    required this.textColor,
    required this.text,
    this.borderColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: 10.w,
          vertical: 30.h),
      child: MaterialButton(
        textColor: textColor,
        padding: EdgeInsets.symmetric(
            horizontal: 60.w,
            vertical: 10.h),
        shape: RoundedRectangleBorder(
            side: BorderSide(color: borderColor),
            borderRadius: BorderRadius.circular(10)),
        color: btnColor,
        onPressed: () {
          controller.nextPage();
        },
        child: Text(
          text,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}