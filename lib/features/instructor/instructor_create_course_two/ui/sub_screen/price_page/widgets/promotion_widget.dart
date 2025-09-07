import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:makhekh/const/colors/colors.dart';

class PromotionWidget extends StatelessWidget {
  const PromotionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5.h,
      children: [
        ListTile(
          title: Text(
            "Offer Conditions".tr,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            "Each time a student uses this link through the instructor, the instructor will receive 80% and the platform will receive 20%. However, when the student accesses the course directly on the platform, the platform will receive 50% and the instructor will receive 50%.".tr,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          )
        ),
        Row(
          spacing: 5.w,
          children: [
            Expanded(
                child: TextFormField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 0, horizontal: 3.w),
                  hintText: "Copy Link".tr,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6)
                  )),
            )),
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6)
              ),
              padding: EdgeInsets.symmetric(
                  vertical: 11.h),
              color: AppColors.primaryColor,
              textColor: AppColors.whiteColor,
              onPressed: () {},
              child: Text("Copy".tr),
            )
          ],
        ),
      ],
    );
  }
}