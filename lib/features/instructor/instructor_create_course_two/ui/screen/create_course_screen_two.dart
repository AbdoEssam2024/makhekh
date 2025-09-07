import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/colors/colors.dart';
import 'package:makhekh/const/functions/pop_func.dart';
import 'package:makhekh/features/core_widets/pop_scope.dart';
import 'package:makhekh/features/instructor/instructor_create_course_two/controller/create_course_two_controller.dart';
import '../../../instructor_create_course_one/ui/widgets/drop_down_menu_widget.dart';
import '../sub_screen/coupons_page_screen.dart';
import '../sub_screen/curriculum_page/screen/curriculum_page_screen.dart';
import '../sub_screen/landing_page_screen.dart';
import '../sub_screen/price_page/screen/pricing_page_screen.dart';
import '../sub_screen/schedule_screen.dart';
import '../widgets/main_screen_btns.dart';
import '../widgets/screen_two_header.dart';
import '../widgets/tabbar_widget_two.dart';

class InstructorCreateCoursetwo extends GetView<CreateCourseTwoController> {
  const InstructorCreateCoursetwo({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CreateCourseTwoController());
    return PopScopeWidget(
        popAction: (didpop, p1) {
          popFunc(didpop: didpop, result: controller.baskToCourseOneScreen());
        },
        childWidget: Scaffold(
          appBar: AppBar(
            toolbarHeight: 100.h,
            leading: IconButton(
                onPressed: () {
                  controller.baskToCourseOneScreen();
                },
                icon: Icon(Icons.arrow_back_ios,
                    size: 20, color: AppColors.blackColor)),
            actions: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 20.w),
                child: DropDownMenuWidget(),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                ScreenTwoHeader(),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 15.h,
                  ),
                  child: CreateCourserTabBarTwo(),
                ),
                SizedBox(
                  height: 300.h,
                  child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    controller: controller.tabController,
                    children: [
                      CurriculumScreen(),
                      ScheduleScreen(),
                      LandingPageScreen(),
                      PricingPageScreen(),
                      CouponsPageScreen(),
                    ],
                  ),
                ),
                Obx(
                  () => controller.toogleBtns(
                      MainScreenSingleBtn(), MainScreenDoubleBtn()),
                )
              ],
            ),
          ),
        ));
  }
}
