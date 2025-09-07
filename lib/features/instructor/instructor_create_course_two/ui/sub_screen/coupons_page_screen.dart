import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/colors/colors.dart';
import 'package:makhekh/features/instructor/instructor_create_course_two/controller/create_course_two_controller.dart';

class CouponsPageScreen extends GetView<CreateCourseTwoController> {
  const CouponsPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: 5.w,
            vertical: 5.h),
        decoration: BoxDecoration(border: Border.all()),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 15.w,
              vertical: 15.h),
          child: Container(
            margin: EdgeInsets.only(top: 1.h),
            child: Column(
              spacing: 3.h,
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 1.h,
                          horizontal: 5.w),
                      width: double.infinity,
                      child: CustomText(
                        label: "Coupon".tr,
                        size: 18.sp,
                        weight: FontWeight.w500,
                      ),
                    ),
                    Divider(
                      color: AppColors.greyColor,
                    )
                  ],
                ),
                Row(
                  spacing: 3.w,
                  children: [
                    Text(
                      "Coupon Code".tr,
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8))),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  spacing: 10.w,
                  children: [
                    Expanded(
                      child: CustomDropDownWithLabelRow(
                          label: "Coupon Status".tr,
                          dropDownItems: [
                            DropdownMenuEntry(value: "Free".tr, label: "Free".tr)
                          ],
                          initSelection: "Free".tr),
                    ),
                    Expanded(
                      child: CustomDropDownWithLabelRow(
                          label: "No of users".tr,
                          dropDownItems: [
                            DropdownMenuEntry(
                                value: "Limited".tr, label: "Limited".tr)
                          ],
                          initSelection: "Limited".tr,)
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                  
                          horizontal: 5.w),
                      width: double.infinity,
                  child: CustomText(
                    label: "Coupon Validity Period".tr,
                    size: 18.sp,
                    weight: FontWeight.w500,
                  ),
                ),
                Row(
                  spacing: 5.w,
                  children: [
                    CustomText(
                      label: "Coupon Start Date".tr,
                      size: 12.sp,
                      weight: FontWeight.w400,
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: controller.couponStartDate.value,
                        onTap: () {
                          controller.selectStartDate(context);
                        },
                        readOnly: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.date_range_rounded)),
                      ),
                    )
                  ],
                ),
                Row(
                  spacing: 65.w,
                  children: [
                    CustomText(
                      label: "Coupon End Date".tr,
                      size: 12.sp,
                      weight: FontWeight.w400,
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: controller.couponEndDate.value,
                        onTap: () {
                          controller.selectEndDate(context);
                        },
                        readOnly: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.date_range_rounded)),
                      ),
                    )
                  ],
                ),
                CouponsScreenDoubleBtn()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomDropDownWithLabelRow extends StatelessWidget {
  final String label;
  final String initSelection;
  final List<DropdownMenuEntry<String>> dropDownItems;
  const CustomDropDownWithLabelRow(
      {super.key,
      required this.label,
      required this.dropDownItems,
      required this.initSelection});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 2.h,
      children: [
        CustomText(label: label),
        Expanded(
          child: DropdownMenu(
              inputDecorationTheme: InputDecorationTheme(
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 2.w
                      ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.greyColor),
                      borderRadius: BorderRadius.circular(10))),
              initialSelection: initSelection,
              dropdownMenuEntries: dropDownItems),
        )
      ],
    );
  }
}

class CustomText extends StatelessWidget {
  final String label;
  final double size;
  final FontWeight weight;

  const CustomText(
      {super.key,
      required this.label,
      this.size = 12,
      this.weight = FontWeight.w400});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: TextAlign.start,
      style: TextStyle(
          fontSize: size, fontWeight: weight, color: AppColors.blackColor),
    );
  }
}

class CouponsScreenDoubleBtn extends GetView<CreateCourseTwoController> {
  const CouponsScreenDoubleBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CostumBtn(
          btnFunc: () {},
          btnColor: AppColors.whiteColor,
          textColor: AppColors.primaryColor,
          text: "Edit Coupon".tr,
          borderColor: AppColors.primaryColor,
        ),
        CostumBtn(
          btnFunc: () {},
          btnColor: AppColors.primaryColor,
          textColor: AppColors.whiteColor,
          text: "Create Coupon".tr,
        ),
      ],
    );
  }
}

class CostumBtn extends GetView<CreateCourseTwoController> {
  final Color btnColor;
  final Color textColor;
  final Color borderColor;
  final String text;
  final void Function() btnFunc;
  const CostumBtn({
    super.key,
    required this.btnColor,
    required this.textColor,
    required this.text,
    required this.btnFunc,
    this.borderColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 2.h),
      child: MaterialButton(
        textColor: textColor,
        padding: EdgeInsets.symmetric(
            horizontal: 6.w,
            vertical: 2.h),
        shape: RoundedRectangleBorder(
            side: BorderSide(color: borderColor),
            borderRadius: BorderRadius.circular(10)),
        color: btnColor,
        onPressed: btnFunc,
        child: Text(
          text,
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
