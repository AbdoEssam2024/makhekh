import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/colors/colors.dart';
import 'package:makhekh/features/onboarding/controller/onboarding_controller.dart';
import 'package:makhekh/features/onboarding/data/onboarding_data.dart';

class CustomDotsController extends StatelessWidget {
  const CustomDotsController({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10.w,
              children: [
                ...List.generate(
                    onBoardingData.length,
                    (index) => AnimatedContainer(
                          duration: Duration(milliseconds: 900),
                          width: controller.currentPageIndex == index
                              ? 20.w
                              : 5.w,
                          height: 5.h,
                          decoration: BoxDecoration(
                              color: controller.currentPageIndex == index
                                  ? AppColors.primaryColor
                                  : AppColors.greyColor,
                              borderRadius: BorderRadius.circular(20)),
                        ))
              ],
            ));
  }
}
