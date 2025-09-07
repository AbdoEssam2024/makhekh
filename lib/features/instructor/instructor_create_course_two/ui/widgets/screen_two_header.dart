import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/images/images.dart';
import 'package:makhekh/features/instructor/instructor_create_course_two/controller/create_course_two_controller.dart';
import 'package:makhekh/const/colors/colors.dart';


class ScreenTwoHeader extends GetView<CreateCourseTwoController> {
  const ScreenTwoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Obx(() => Text(
                controller.pageTitle.value,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.blackColor),
              )),
          Image.asset(AppImages.createCourse)
        ],
      ),
    );
  }
}