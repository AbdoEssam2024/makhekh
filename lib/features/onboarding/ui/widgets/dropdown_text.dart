import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropdownText extends StatelessWidget {
  final String text;
  final String image;
  const DropdownText({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 10.w,
      children: [
        Image.asset(image, height: 20.h, width: 20.w),
        Text(text, style: TextStyle(color: Colors.white, fontSize: 16.sp)),
      ],
    );
  }
}
