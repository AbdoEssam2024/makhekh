import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makhekh/features/instructor/instructor_create_course_one/controller/create_course_one_controller.dart';
import '../widgets/radio_widget.dart';


class StepOneScreen extends GetView<CreateCourseOneController> {
  const StepOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16.h,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Type of courses you will create".tr,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        Column(
          spacing: 16.h,
          children: [
            RadioWidget(text: "Recorded Educational Courses".tr, val: "recorded"),
            RadioWidget(
                text: "Live - streamed Educational Courses".tr, val: "live"),
            RadioWidget(
                text: "Recorded Live - Streamed Educational".tr,
                val: "recordedLive"),
            RadioWidget(text: "Online/Offline Questions".tr, val: "questions"),
          ],
        ),
        
      ],
    );
  }
}