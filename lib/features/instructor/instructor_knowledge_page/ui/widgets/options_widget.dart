import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:makhekh/const/colors/colors.dart';

class OptionsWidget extends StatelessWidget {
  final String text;
  final String val;
  final void Function(String?) onChangeFunc;
  final String groupVal;
  const OptionsWidget(
      {super.key,
      required this.text,
      required this.val,
      required this.onChangeFunc,
      required this.groupVal});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Radio(
          activeColor: AppColors.primaryColor,
          value: val,
          groupValue: groupVal,
          onChanged: onChangeFunc,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.blackColor),
        ),
      ],
    );
  }
}
