import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makhekh/features/instructor/instructor_create_course_one/controller/create_course_one_controller.dart';
import 'package:makhekh/const/images/images.dart';


class StepThreeScreen extends GetView<CreateCourseOneController> {
  const StepThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16.h,
      children: [
        Text(
          textAlign: TextAlign.center,
          "What category best fits the knowledge you'll share?".tr,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        DropdownMenu(
          onSelected: (value) {},
          inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12))),
          selectedTrailingIcon: Image.asset(AppImages.arrow),
          width: 300.w,
          trailingIcon: Icon(Icons.menu),
          initialSelection: "Development".tr,
          dropdownMenuEntries: [
            DropdownMenuEntry(
              label: "Development".tr,
              value: "development",
              labelWidget: CustomMenuText(
                text: "Development".tr,
              ),
            ),
            DropdownMenuEntry(
              label: "Business".tr,
              value: "business",
              labelWidget: CustomMenuText(
                text: "Business".tr,
              ),
            ),
            DropdownMenuEntry(
              label: "It & Software".tr,
              value: "it",
              labelWidget: CustomMenuText(
                text: "It & Software".tr,
              ),
            ),
            DropdownMenuEntry(
              label: "Office Productivity".tr,
              value: "office",
              labelWidget: CustomMenuText(
                text: "Office Productivity".tr,
              ),
            ),
            DropdownMenuEntry(
              label: "Personal Developmnet".tr,
              value: "personalDevelopmnet",
              labelWidget: CustomMenuText(
                text: "Personal Developmnet".tr,
              ),
            ),
            DropdownMenuEntry(
              label: "Design".tr,
              value: "design",
              labelWidget: CustomMenuText(
                text: "Design".tr,
              ),
            ),
            DropdownMenuEntry(
              label: "Marketing".tr,
              value: "marketing",
              labelWidget: CustomMenuText(
                text: "Marketing".tr,
              ),
            ),
            DropdownMenuEntry(
              label: "Life style".tr,
              value: "lifestyle",
              labelWidget: CustomMenuText(
                text: "Life style".tr,
              ),
            ),
            DropdownMenuEntry(
              label: "Music".tr,
              value: "music",
              labelWidget: CustomMenuText(
                text: "Music".tr,
              ),
            ),
            DropdownMenuEntry(
              label: "Photography & Video".tr,
              value: "photography",
              labelWidget: CustomMenuText(
                text: "Photography & Video".tr,
              ),
            ),
            DropdownMenuEntry(
              label: "Health & Fitness".tr,
              value: "health",
              labelWidget: CustomMenuText(
                text: "Health & Fitness".tr,
              ),
            ),
            DropdownMenuEntry(
              label: "Teaching & Academics".tr,
              value: "teaching",
              labelWidget: CustomMenuText(
                text: "Teaching & Academics".tr,
              ),
            ),
            DropdownMenuEntry(
              label: "Others".tr,
              value: "other",
              labelWidget: CustomMenuText(
                text: "Others".tr,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class CustomMenuText extends StatelessWidget {
  final String text;
  const CustomMenuText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
    );
  }
}