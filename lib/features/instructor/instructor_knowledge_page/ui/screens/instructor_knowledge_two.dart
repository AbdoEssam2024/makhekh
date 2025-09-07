import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/route/routes_names.dart';
import 'package:makhekh/features/instructor/instructor_knowledge_page/controller/instructor_knowledge_two_controller.dart';
import 'package:makhekh/const/colors/colors.dart';
import 'package:makhekh/const/functions/pop_func.dart';
import 'package:makhekh/features/core_widets/pop_scope.dart';
import '../widgets/custom_btn.dart';
import '../widgets/options_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InstructorKnowledgeTwo extends GetView<InstructorKnowledgeTwoController> {
  const InstructorKnowledgeTwo({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(InstructorKnowledgeTwoController());
    return PopScopeWidget(
        popAction: (didpop, p1) {
          popFunc(
              didpop: didpop,
              result: Get.offNamed(RoutesNames.instructorKnowledgeOne));
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
                    "How professional are you in content creation?".tr,
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
                            groupVal: controller.groupValueTwo.value,
                            val: "one",
                            onChangeFunc: (value) {
                              controller.changeValue(
                                  controller.groupValueTwo, value!);
                            },
                            text: "Beginner".tr)),
                        Obx(() => OptionsWidget(
                            groupVal: controller.groupValueTwo.value,
                            val: "two",
                            onChangeFunc: (value) {
                              controller.changeValue(
                                  controller.groupValueTwo, value!);
                            },
                            text: "I have some knowledge".tr)),
                        Obx(() => OptionsWidget(
                            groupVal: controller.groupValueTwo.value,
                            val: "three",
                            onChangeFunc: (value) {
                              controller.changeValue(
                                  controller.groupValueTwo, value!);
                            },
                            text: "I’m experienced".tr)),
                        Obx(() => OptionsWidget(
                            groupVal: controller.groupValueTwo.value,
                            val: "four",
                            onChangeFunc: (value) {
                              controller.changeValue(
                                  controller.groupValueTwo, value!);
                            },
                            text: "I have videos ready to upload".tr))
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
                            Get.offNamed(RoutesNames.instructorKnowledgeOne);
                          },
                          btnColor: AppColors.whiteColor,
                          btnTextColor: AppColors.primaryColor),
                      CustomBtn(
                          text: "Next".tr,
                          btnFunc: () {
                            Get.offNamed(
                                RoutesNames.instructorKnowledgeThree);
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
