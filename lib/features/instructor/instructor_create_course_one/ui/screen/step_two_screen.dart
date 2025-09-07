import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/colors/colors.dart';
import 'package:makhekh/features/instructor/instructor_create_course_one/controller/create_course_one_controller.dart';



class StepTwoScreen extends GetView<CreateCourseOneController> {
  const StepTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16.h,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "How about your course title?".tr,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 16.w),
          child: TextField(
            minLines: 5,
            maxLines: 10,
            decoration: InputDecoration(
                hintText: "UX/UI Design".tr,
                hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.greyColor),
                border: OutlineInputBorder()),
          ),
        )
      ],
    );
  }
}