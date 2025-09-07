import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/colors/colors.dart';
import 'package:makhekh/const/images/images.dart';
import 'menu_text.dart';

class DropDownMenuWidget extends StatelessWidget {
  const DropDownMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      menuStyle: MenuStyle(
        backgroundColor: WidgetStatePropertyAll(
          AppColors.whiteColor.withAlpha(180),
        ),
        shadowColor: WidgetStatePropertyAll(AppColors.primaryColor),
        elevation: WidgetStatePropertyAll(30),
      ),
      selectedTrailingIcon: Icon(Icons.menu_book),
      width: 200.w,
      trailingIcon: Icon(Icons.menu),
      inputDecorationTheme: InputDecorationTheme(border: InputBorder.none),
      dropdownMenuEntries: [
        DropdownMenuEntry(
          value: "1",
          label: "",
          labelWidget: Column(
            spacing: 1.h,
            children: [
              MenuText(
                func: () {},
                text: "Logo".tr,
                textWeight: FontWeight.w400,
                textSize: 16,
                textColor: AppColors.blackColor,
              ),
              Divider(color: AppColors.primaryColor),
              InkWell(
                onTap: () {},
                child: Row(
                  spacing: 1.w,
                  children: [
                    Image.asset(
                      AppImages.courses,
                      color: AppColors.primaryColor,
                    ),
                    Text(
                      "Courses".tr,
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(color: AppColors.primaryColor),
              Row(
                spacing: 1.w,
                children: [
                  Image.asset(
                    AppImages.commenication,
                    color: AppColors.primaryColor,
                  ),
                  MenuText(
                    func: () {},
                    text: "Communication".tr,
                    textWeight: FontWeight.w500,
                    textSize: 16,
                    textColor: AppColors.primaryColor,
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 1.w),
                width: double.infinity,
                child: Column(
                  spacing: 1.h,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MenuText(
                      func: () {},
                      text: "Q & A".tr,
                      textColor: AppColors.blackColor,
                    ),
                    MenuText(
                      func: () {},
                      text: "Messages".tr,
                      textColor: AppColors.blackColor,
                    ),
                    MenuText(
                      func: () {},
                      text: "Student Suggestions".tr,
                      textColor: AppColors.blackColor,
                    ),
                  ],
                ),
              ),
              Divider(color: AppColors.primaryColor),
              Row(
                spacing: 1.w,
                children: [
                  Image.asset(
                    AppImages.performance,
                    color: AppColors.primaryColor,
                  ),
                  MenuText(
                    func: () {},
                    text: "Performance".tr,
                    textWeight: FontWeight.w500,
                    textSize: 16,
                    textColor: AppColors.primaryColor,
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 1.w),
                width: double.infinity,
                child: Column(
                  spacing: 1.h,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MenuText(
                      func: () {},
                      text: "Overview".tr,
                      textColor: AppColors.blackColor,
                    ),
                    MenuText(
                      func: () {},
                      text: "Students".tr,
                      textColor: AppColors.blackColor,
                    ),
                    MenuText(
                      func: () {},
                      text: "Student Suggestions".tr,
                      textColor: AppColors.blackColor,
                    ),
                  ],
                ),
              ),
              Divider(color: AppColors.primaryColor),
            ],
          ),
        ),
      ],
    );
  }
}
