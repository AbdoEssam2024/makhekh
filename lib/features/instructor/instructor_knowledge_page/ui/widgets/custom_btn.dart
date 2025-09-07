import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBtn extends StatelessWidget {
  final String text;
  final void Function() btnFunc;
  final Color btnColor;
  final Color btnTextColor;
  final Color borderColor;

  const CustomBtn(
      {super.key,
      required this.text,
      required this.btnFunc,
      required this.btnColor,
      required this.btnTextColor,
      this.borderColor = Colors.transparent});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:  20.w),
      child: MaterialButton(
        color: btnColor,
        textColor: btnTextColor,
        padding: EdgeInsets.symmetric(
            horizontal: 40.w,
            vertical: 15.h),
        shape: RoundedRectangleBorder(
            side: BorderSide(
                color: borderColor, width: 1.w),
            borderRadius: BorderRadius.circular(5)),
        onPressed: btnFunc,
        child: Text(
          text,
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}