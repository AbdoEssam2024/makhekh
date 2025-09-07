import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:makhekh/const/colors/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class OtpWidget extends StatelessWidget {
  final void Function(String) onSubmitCode;

  const OtpWidget({super.key, required this.onSubmitCode});

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      numberOfFields: 6,
      textStyle: TextStyle(fontSize: 16.sp , fontWeight: FontWeight.bold),
      showFieldAsBox: false,
      margin: EdgeInsets.symmetric(horizontal: 5.h),
      enabledBorderColor: AppColors.primaryColor,
      borderRadius: BorderRadius.circular(15),
      fieldWidth: 40.w,
      fieldHeight: 45.h,
      borderWidth: 2.0,
      onSubmit: onSubmitCode,
      clearText: true,
    );
  }
}