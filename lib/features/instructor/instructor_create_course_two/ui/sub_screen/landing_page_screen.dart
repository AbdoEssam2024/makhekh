import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:makhekh/const/colors/colors.dart';
import 'package:makhekh/const/images/images.dart';

class LandingPageScreen extends StatelessWidget {
  const LandingPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 15.h,
          children: [
            CustomFormFieldData(label: "Course Title".tr),
            CustomFormFieldData(label: "Description".tr),
            CustomDropDownWithLabel(
                label: "Language".tr,
                dropDownItems: [
                  DropdownMenuEntry(value: "English".tr, label: "English".tr)
                ],
                initSelection: "English".tr),
            CustomDropDownWithLabel(
                label: "Category".tr,
                dropDownItems: [
                  DropdownMenuEntry(value: "Design".tr, label: "Design".tr)
                ],
                initSelection: "Design".tr),
            CustomDropDownWithLabel(
                label: "Sub Category".tr,
                dropDownItems: [
                  DropdownMenuEntry(value: "Web Design".tr, label: "Web Design".tr)
                ],
                initSelection: "Web Design".tr),
            CustomDropDownWithLabel(
                label: "Set Level".tr,
                dropDownItems: [
                  DropdownMenuEntry(value: "Beginner".tr, label: "Beginner".tr)
                ],
                initSelection: "Beginner".tr),
            CustomDropDownWithLabel(
                label: "Course Duration".tr,
                dropDownItems: [
                  DropdownMenuEntry(value: "Month".tr, label: "Month".tr)
                ],
                initSelection: "Month".tr),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UploadPhotoVideoWidget(btnText: "Upload video".tr),
                UploadPhotoVideoWidget(btnText: "Upload Photo".tr),
              ],
            ),
            CustomFormFieldData(label: "Lecture Name".tr),
            CustomFormFieldData(label: "Description".tr),
          ],
        ),
      ),
    );
  }
}

class CustomFormFieldData extends StatelessWidget {
  final String label;
  const CustomFormFieldData({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin:
              EdgeInsets.symmetric(vertical: 9.h),
          child: CustomText(label: label),
        ),
        TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: AppColors.greyColor))),
        )
      ],
    );
  }
}

class CustomDropDownWithLabel extends StatelessWidget {
  final String label;
  final String initSelection;
  final List<DropdownMenuEntry<String>> dropDownItems;
  const CustomDropDownWithLabel(
      {super.key,
      required this.label,
      required this.dropDownItems,
      required this.initSelection});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5.h  ,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(label: label),
        DropdownMenu(
            inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.greyColor),
                    borderRadius: BorderRadius.circular(10))),
            width: 300.w,
            initialSelection: initSelection,
            dropdownMenuEntries: dropDownItems)
      ],
    );
  }
}

class CustomText extends StatelessWidget {
  final String label;
  const CustomText({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.blackColor),
    );
  }
}

class UploadPhotoVideoWidget extends StatelessWidget {
  final String btnText;
  const UploadPhotoVideoWidget({super.key, required this.btnText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      child: Column(
        children: [
          SizedBox(
              child: Image.asset(
                AppImages.video,
                fit: BoxFit.contain,
              )),
          SizedBox(
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)),
              color: AppColors.primaryColor,
              textColor: AppColors.whiteColor,
              onPressed: () {},
              child: Text(
                btnText,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
          )
        ],
      ),
    );
  }
}
