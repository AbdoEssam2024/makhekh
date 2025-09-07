import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/functions/pop_func.dart';
import 'package:makhekh/const/route/routes_names.dart';
import 'package:makhekh/features/core_widets/pop_scope.dart';
import 'package:makhekh/features/instructor/instructor_knowledge_page/controller/instructor_knowledge_three_controller.dart';
import 'package:makhekh/const/colors/colors.dart';
import 'package:makhekh/features/instructor/instructor_knowledge_page/ui/widgets/custom_btn.dart';
import 'package:makhekh/features/instructor/instructor_knowledge_page/ui/widgets/options_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InstructorKnowledgeThree
    extends GetView<InstructorKnowledgeThreeController> {
  const InstructorKnowledgeThree({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(InstructorKnowledgeThreeController());
    return PopScopeWidget(
        popAction: (didpop, p1) {
          popFunc(
              didpop: didpop,
              result: Get.offNamed(RoutesNames.instructorKnowledgeTwo));
        },
        childWidget: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            toolbarHeight: 150.h,
            title: Text(
              "Tell us your knowledge".tr,
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
          ),
          body: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                spacing: 20.h,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    "Do you have an audience to share your course with?".tr,
                    style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      spacing: 20.h,
                      children: [
                        Obx(() => OptionsWidget(
                            groupVal: controller.groupValueThree.value,
                            val: "one",
                            onChangeFunc: (value) {
                              controller.changeValue(
                                  controller.groupValueThree, value!);
                            },
                            text: "Not at the moment".tr)),
                        Obx(() => OptionsWidget(
                            groupVal: controller.groupValueThree.value,
                            val: "two",
                            onChangeFunc: (value) {
                              controller.changeValue(
                                  controller.groupValueThree, value!);
                            },
                            text: "I have a few followers".tr)),
                        Obx(() => OptionsWidget(
                            groupVal: controller.groupValueThree.value,
                            val: "three",
                            onChangeFunc: (value) {
                              controller.changeValue(
                                  controller.groupValueThree, value!);
                            },
                            text: "I have a large number of followers".tr)),
                        Obx(() => OptionsWidget(
                            groupVal: controller.groupValueThree.value,
                            val: "four",
                            onChangeFunc: (value) {
                              controller.changeValue(
                                  controller.groupValueThree, value!);
                            },
                            text: "I have videos ready to upload".tr)),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomBtn(
                          borderColor: AppColors.primaryColor,
                          text: "Previous".tr,
                          btnFunc: () {
                            Get.offNamed(RoutesNames.instructorKnowledgeTwo);
                          },
                          btnColor: AppColors.whiteColor,
                          btnTextColor: AppColors.primaryColor),
                      CustomBtn(
                          text: "Next".tr,
                          btnFunc: () {
                            Get.offAllNamed(
                                RoutesNames.instructorCreateCourseOne);
                          },
                          btnColor: AppColors.primaryColor,
                          btnTextColor: AppColors.whiteColor)
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
