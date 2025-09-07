import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:makhekh/const/colors/colors.dart';


Widget buildProgressBar(double value) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 4.0),
    child: Row(
      children: [
        // Expanded(flex: 2, child: Text(label)),
        SizedBox(width: 15.w),
        Expanded(
          // flex: 1,
          child: LinearProgressIndicator(
            value: value,
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation(AppColors.greyColor),
          ),
        ),
        SizedBox(width: 3.w),
        Text('${(value * 100).toStringAsFixed(0)}%'),
      ],
    ),
  );
}