import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makhekh/features/instructor/instructor_create_course_two/controller/create_course_two_controller.dart';
import '../widget/add_btn.dart';
import '../widget/content_widget.dart';
import '../widget/section_widget.dart';
import 'package:makhekh/const/colors/colors.dart';

class CurriculumScreen extends GetView<CreateCourseTwoController> {
  const CurriculumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 4.h,
        children: [
          Card(
            margin: EdgeInsets.symmetric(
                vertical: 3.h,
                horizontal: 1.5.w),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: AppColors.greyColor, width: 0.5)),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 1.w),
              child: Column(
                children: [
                  SectionWidget(
                    mainTitle: "Section".tr,
                    subTitle: "Lecture Titles".tr,
                    hintText: "Section Name".tr,
                    addFunc: () {
                      controller.showLictureSection();
                    },
                    cancelFunc: () {},
                    deleteFunc: () {},
                    editFunc: () {},
                    saveFunc: () {},
                  ),
                  Card(
                      margin: EdgeInsets.symmetric(
                        vertical: 3.h,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                              color: AppColors.greyColor, width: 0.5)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 1.w),
                        child: Column(
                          children: [
                            Obx(() => Visibility(
                                  visible: controller.showLicture.value,
                                  child: SectionWidget(
                                    mainTitle: "Lecture".tr,
                                    subTitle: "Content".tr,
                                    hintText: "Lecture Titles".tr,
                                    addFunc: () {
                                      // controller.showContentSection();
                                    },
                                    cancelFunc: () {},
                                    deleteFunc: () {},
                                    editFunc: () {},
                                    saveFunc: () {},
                                  ),
                                )),
                            Obx(() => Visibility(
                                visible: controller.showLicture.value,
                                child: ContentWidget())),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5.h,
                                  horizontal: 2.w),
                              child: AddBtn(
                                text: "Lecture".tr,
                                addFunc: () {},
                              ),
                            )
                          ],
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 5.h,
                        horizontal: 3.w),
                    child: AddBtn(
                      text: "Section".tr,
                      addFunc: () {},
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}