import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:makhekh/const/colors/colors.dart';


class DownloadableVideo extends StatelessWidget {
  const DownloadableVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "No Selected File".tr,
          suffixIcon: Container(
            margin: EdgeInsets.symmetric(
                horizontal: 15.w,
                vertical: 1.h),
            child: TextButton.icon(
                style: ButtonStyle(
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(
                            color: AppColors.primaryColor, width: 2)))),
                onPressed: () {},
                label: Text(
                  "Upload".tr,
                  style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                )),
          ),
          border: OutlineInputBorder()),
    );
  }
}