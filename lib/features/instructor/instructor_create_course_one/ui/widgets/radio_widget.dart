import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:makhekh/features/instructor/instructor_create_course_one/controller/create_course_one_controller.dart';
import 'package:makhekh/const/colors/colors.dart';


class RadioWidget extends GetView<CreateCourseOneController> {
  final String text;

  final String val;
  const RadioWidget({super.key, required this.text, required this.val});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Obx(
          () => Radio(
            activeColor: AppColors.primaryColor,
            value: val,
            groupValue: controller.groupVal.value,
            onChanged: (value) {
              controller.getValue(value.toString());
            },
          ),
        ),
        Text(text , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w400),),
      ],
    );
  }
}