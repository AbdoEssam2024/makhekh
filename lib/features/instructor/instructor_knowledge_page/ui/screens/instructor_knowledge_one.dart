import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/functions/pop_func.dart';
import 'package:makhekh/const/route/routes_names.dart';
import 'package:makhekh/features/core_widets/pop_scope.dart';
import 'package:makhekh/features/instructor/instructor_knowledge_page/controller/instructor_knowledge_one_controller.dart';
import 'package:makhekh/features/instructor/instructor_knowledge_page/ui/widgets/custom_btn.dart';
import 'package:makhekh/features/instructor/instructor_knowledge_page/ui/widgets/options_widget.dart';
import 'package:makhekh/const/colors/colors.dart';

class InstructorKnowledgeOne extends GetView<InstructorKnowledgeOneController> {
  const InstructorKnowledgeOne({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(InstructorKnowledgeOneController());
    return PopScopeWidget(
        popAction: (didpop, p1) {
          popFunc(didpop: didpop, result: exit(0));
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
                    "What kind of teaching you practiced before?".tr,
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
                            groupVal: controller.groupValueOne.value,
                            onChangeFunc: (value) {
                              controller.changeValue(
                                  controller.groupValueOne, value!);
                            },
                            val: "one",
                            text: "Personally,informally".tr)),
                        Obx(() => OptionsWidget(
                            groupVal: controller.groupValueOne.value,
                            onChangeFunc: (value) {
                              controller.changeValue(
                                  controller.groupValueOne, value!);
                            },
                            val: "two",
                            text: "Personally, Professionally".tr)),
                        Obx(() => OptionsWidget(
                            groupVal: controller.groupValueOne.value,
                            onChangeFunc: (value) {
                              controller.changeValue(
                                  controller.groupValueOne, value!);
                            },
                            val: "three",
                            text: "Online".tr)),
                        Obx(() => OptionsWidget(
                            groupVal: controller.groupValueOne.value,
                            onChangeFunc: (value) {
                              controller.changeValue(
                                  controller.groupValueOne, value!);
                            },
                            val: "four",
                            text: "Others".tr)),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomBtn(
                          text: "Next".tr,
                          btnFunc: () {
                            Get.offNamed(RoutesNames.instructorKnowledgeTwo);
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
