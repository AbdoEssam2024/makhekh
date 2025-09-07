import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:makhekh/const/colors/colors.dart';
import 'package:makhekh/features/instructor/instructor_create_course_two/controller/create_course_two_controller.dart';
import '../../../widgets/radio_two_widget.dart';
import 'curriculum_tabbar_widget_two.dart';
import 'downloadable_video_widget.dart';


class ContentWidget extends GetView<CreateCourseTwoController> {
  const ContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Content".tr,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primaryColor),
            ),
            Row(
              children: [
                Obx(
                  () => RadioTwoWidget(
                      groupValue: controller.contentGroupVal.value,
                      radioFunc: (value) {
                        controller.getContentValue(value!);
                      },
                      text: "Video".tr,
                      val: "Video".tr),
                ),
                Obx(() => RadioTwoWidget(
                    groupValue: controller.contentGroupVal.value,
                    radioFunc: (value) {
                      controller.getContentValue(value!);
                    },
                    text: "File".tr,
                    val: "File".tr)),
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_drop_down))
          ],
        ),
        Column(
          spacing: 15.h,
          children: [
            CurriculumTabBarWidget(),
            SizedBox(
              height: 10.h,
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                controller: controller.curriculumTabController,
                children: [
                  DownloadableVideo(),
                  DownloadableVideo(),
                  DownloadableVideo(),
                ],
              ),
            ),
          ],
        ),
        Container(
          margin:
              EdgeInsets.symmetric(vertical:  1.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MaterialButton(
                textColor: AppColors.primaryColor,
                onPressed: () {},
                child: Text(
                  "Cancel".tr,
                  style:
                      TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                width: 25.w,
                child: MaterialButton(
                  padding: EdgeInsets.symmetric(
                      vertical: 12.h,
                      horizontal: 1.w),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  color: AppColors.primaryColor,
                  textColor: AppColors.whiteColor,
                  onPressed: () {},
                  child: Text(
                    "Save".tr,
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}