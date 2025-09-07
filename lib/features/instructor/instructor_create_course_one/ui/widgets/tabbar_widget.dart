import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makhekh/features/instructor/instructor_create_course_one/controller/create_course_one_controller.dart';
import 'package:makhekh/const/colors/colors.dart';


class CreateCourserTabBar extends GetView<CreateCourseOneController> {
  const CreateCourserTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
        onTap: (value) {
          controller.pageIndex.value = value;
          controller.changeBtnText();
        },
        indicatorAnimation: TabIndicatorAnimation.linear,
        controller: controller.tabController,
        labelStyle: TextStyle(
            color: AppColors.primaryColor,
            letterSpacing: 1,
            fontWeight: FontWeight.w500,
            fontSize: 14),
        unselectedLabelStyle: TextStyle(
            color: AppColors.grey,
            fontWeight: FontWeight.w400,
            fontSize: 12),
        indicatorColor: AppColors.primaryColor,
        tabs: [
          TabsWidget(
            text: "${"Step".tr} 1",
          ),
          TabsWidget(
            text: "${"Step".tr} 2",
          ),
          TabsWidget(
            text: "${"Step".tr} 3",
          ),
          TabsWidget(
            text: "${"Step".tr} 4",
          ),
        ]);
  }
}

class TabsWidget extends StatelessWidget {
  final String text;

  const TabsWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          vertical: 1.h,
        ),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: Text(
          text,
        ),
      ),
    );
  }
}