import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/colors/colors.dart';
import 'package:makhekh/features/instructor/instructor_create_course_two/controller/create_course_two_controller.dart';


class VoucherWidget extends StatelessWidget {
  const VoucherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.h,
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120.h,
            crossAxisCount: 2,
            crossAxisSpacing: 10.h
            ),
        children: [
          VoucherCategory(val: "1", children: [
            CostumVoucherText(title: "Best current price".tr),
            CostumVoucherText(title: "Fixed price".tr),
            CostumVoucherText(title: "Unlimited quantity".tr),
            CostumVoucherText(title: "Limited validity\n period".tr),
          ]),
          VoucherCategory(val: "2", children: [
            CostumVoucherText(title: "Custom price".tr),
            CostumVoucherText(title: "Select a price\n  between two numbers".tr),
            CostumVoucherText(title: "Unlimited quantity".tr),
            CostumVoucherText(title: "Limited validity\n period".tr),
          ]),
          VoucherCategory(val: "3", children: [
            CostumVoucherText(title: "Free period".tr),
            CostumVoucherText(title: "Unlimited quantity".tr),
            CostumVoucherText(title: "Limited validity\n period".tr),
          ]),
          VoucherCategory(val: "4", children: [
            CostumVoucherText(title: "Free period".tr),
            CostumVoucherText(title: "limited quantity".tr),
            CostumVoucherText(title: "Limited validity\n period".tr),
          ]),
        ],
      ),
    );
  }
}

class CostumVoucherText extends StatelessWidget {
  final String title;
  const CostumVoucherText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
    );
  }
}

class VoucherCategory extends GetView<CreateCourseTwoController> {
  final List<Widget> children;
  final String val;
  const VoucherCategory({super.key, required this.children, required this.val});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Obx(() => Radio(
                  activeColor: AppColors.primaryColor,
                  value: val,
                  groupValue: controller.voucherGroupVal.value,
                  onChanged: (val) {
                    controller.getVoucherValue(val.toString());
                  },
                )),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 18.h),
          child: Column(
            spacing: 2.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ),
        )
      ],
    );
  }
}
