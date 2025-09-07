import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/colors/colors.dart';
import 'package:makhekh/features/instructor/instructor_create_course_one/controller/create_course_one_controller.dart';


class StepFourScreen extends GetView<CreateCourseOneController> {
  const StepFourScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 16.h,
        children: [
          StepFourWidget(
            title: "What are the requirements for taking your course?".tr,
          ),
          StepFourWidget(
            title: "What will students learn in your course?".tr,
          ),
          StepFourWidget(
            title: "Who is this course for?".tr,
          ),
        ],
      ),
    );
  }
}

class StepFourWidget extends StatelessWidget {
  final String title;

  const StepFourWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8.h,
      children: [
        Text(
          textAlign: TextAlign.center,
          title,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 16.w),
          child: TextField(
            minLines: 3,
            maxLines: 10,
            decoration: InputDecoration(
                hintText: "... Write your question".tr,
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