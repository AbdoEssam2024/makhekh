import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/colors/colors.dart';
import 'package:makhekh/const/functions/pop_func.dart';
import 'package:makhekh/const/route/routes_names.dart';
import 'package:makhekh/features/core_widets/pop_scope.dart';
import 'package:makhekh/features/instructor/instructor_create_course_one/controller/create_course_one_controller.dart';
import 'package:makhekh/features/instructor/instructor_create_course_one/ui/widgets/drop_down_menu_widget.dart';
import 'package:makhekh/features/instructor/instructor_create_course_one/ui/widgets/screen_header.dart';
import 'package:makhekh/features/instructor/instructor_create_course_one/ui/widgets/tabbar_widget.dart';
import 'package:makhekh/features/instructor/instructor_create_course_one/ui/screen/step_four_screen.dart';
import 'package:makhekh/features/instructor/instructor_create_course_one/ui/screen/step_one_screen.dart';
import 'package:makhekh/features/instructor/instructor_create_course_one/ui/screen/step_three_screen.dart';
import 'package:makhekh/features/instructor/instructor_create_course_one/ui/screen/step_two_screen.dart';

class InstructorCreateCourseOne extends GetView<CreateCourseOneController> {
  const InstructorCreateCourseOne({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CreateCourseOneController());
    return PopScopeWidget(
        popAction: (didpop, p1) {
          popFunc(
              didpop: didpop,
              result: Get.offNamed(RoutesNames.instructorKnowledgeOne));
        },
        childWidget: Scaffold(
          appBar: AppBar(
            toolbarHeight: 100.h,
            leading: IconButton(
                onPressed: () {
                  Get.offNamed(RoutesNames.instructorKnowledgeThree);
                },
                icon: Icon(Icons.arrow_back_ios,
                    size: 20, color: AppColors.blackColor)),
            actions: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 16.w),
                child: DropDownMenuWidget(),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                ScreenHeader(),
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: 16.h,
                      horizontal: 16.w),
                  child: CreateCourserTabBar(),
                ),
                SizedBox(
                  height: 400.h,
                  child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    controller: controller.tabController,
                    children: [
                      StepOneScreen(),
                      StepTwoScreen(),
                      StepThreeScreen(),
                      StepFourScreen(),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: 16.h),
                  child: MaterialButton(
                    textColor: AppColors.whiteColor,
                    padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 16.h),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: AppColors.primaryColor,
                    onPressed: () {
                      controller.nextPage();
                    },
                    child: Obx(() => Text(
                          controller.btnText.value,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        )),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
