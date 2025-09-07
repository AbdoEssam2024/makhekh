import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makhekh/features/instructor/instructor_create_course_two/controller/create_course_two_controller.dart';
import 'package:makhekh/const/colors/colors.dart';


class ScheduleScreen extends GetView<CreateCourseTwoController> {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10.w  ,
      ),
      decoration: BoxDecoration(border: Border.all()),
      child: Column(
        spacing: 15.h,
        children: [
          Container(
            margin: EdgeInsets.only(
                left: 2.w,
                right: 2.w,
                top: 2.h),
            child: Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: 300.w,
                child: DropdownMenu(
                    onSelected: (value) {
                      controller.getDropDownValue(
                          controller.scheduleValue, value!);
                    },
                    inputDecorationTheme: InputDecorationTheme(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.greyColor),
                            borderRadius: BorderRadius.circular(10))),
                    width: 300.w,
                    initialSelection: "live".tr,
                    dropdownMenuEntries: [
                      DropdownMenuEntry(
                          value: "live".tr,
                          label: "Live - streamed Educational Courses".tr),
                      DropdownMenuEntry(
                          value: "recorded".tr,
                          label: "Recorded Live - Streamed Educational".tr),
                    ]),
              ),
            ),
          ),
          Table(
            children: [
              TableRow(
                  decoration: BoxDecoration(color: AppColors.primaryColor),
                  children: [CustomTableRow()]),
              TableRow(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 1.5, color: AppColors.greyColor)),
                      color: AppColors.whiteColor),
                  children: [CustomTableRow()]),
              TableRow(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 1.5, color: AppColors.greyColor)),
                      color: AppColors.whiteColor),
                  children: [CustomTableRow()]),
              TableRow(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 1.5, color: AppColors.greyColor)),
                      color: AppColors.whiteColor),
                  children: [CustomTableRow()]),
            ],
          )
        ],
      ),
    );
  }
}

class CustomTableText extends StatelessWidget {
  final String text;
  const CustomTableText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.whiteColor),
    );
  }
}

class CustomTableRow extends GetView<CreateCourseTwoController> {
  const CustomTableRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      height: 50.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomTableText(text: "course".tr),
          CustomTableText(text: "Lecture".tr),
          CustomTableText(text: "Date".tr),
          CustomTableText(text: "Time".tr),
          CustomTableText(text: "Students".tr),
          Obx(
            () => Visibility(
                visible:
                    controller.scheduleValue.value == "live".tr ? true : false,
                child: CustomTableText(text: "Status".tr)),
          ),
          CustomTableText(text: "Link".tr),
          CustomTableText(text: "Registration".tr),
        ],
      ),
    );
  }
}