import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makhekh/features/instructor/instructor_create_course_two/controller/create_course_two_controller.dart';
import 'package:makhekh/const/colors/colors.dart';


class CreateCourserTabBarTwo extends GetView<CreateCourseTwoController> {
  const CreateCourserTabBarTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
        tabAlignment: TabAlignment.start,
        isScrollable: true,
        onTap: (value) {
          controller.pageIndex.value = value;
          controller.changePageTitle();
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
            fontSize: 14),
        indicatorColor: AppColors.primaryColor,
        tabs: [
          TabsWidget(
            text: "Curriculum".tr,
          ),
          TabsWidget(
            text: "Schedule".tr,
          ),
          TabsWidget(
            text: "LandingPage".tr,
          ),
          TabsWidget(
            text: "Pricing".tr,
          ),
          TabsWidget(
            text: "Coupon".tr,
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
          vertical: 5.h,
        ),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: Text(
          text,
        ),
      ),
    );
  }
}