import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/colors/colors.dart';
import 'package:makhekh/features/onboarding/controller/onboarding_controller.dart';
import 'package:makhekh/features/onboarding/data/onboarding_data.dart';
import 'package:makhekh/features/onboarding/ui/widgets/dotscontroller.dart';
import 'package:makhekh/features/onboarding/ui/widgets/onboarding_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingController controller = Get.find();
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              controller.goToLoginPage();
            },
            child: Text(
              "Skip".tr,
              style: TextStyle(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w400,
                fontSize: 17.sp,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 500.h,
              child: PageView.builder(
                itemCount: onBoardingData.length,
                itemBuilder: (context, index) => OnboardingWidget(index: index),
                controller: controller.pageController,
                onPageChanged: (index) {
                  controller.onChangePage(index);
                },
              ),
            ),
            CustomDotsController(),
            SizedBox(height: 20.h),
            Container(
              alignment: Alignment(0, 0.8),
              child: ElevatedButton(
                onPressed: () {
                  //navigate to authentication
                  controller.goToNextPage();
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size.fromWidth(300.w),
                  backgroundColor: AppColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(15.h),
                ),
                child: GetBuilder<OnboardingController>(
                  builder: (controller) => Text(
                    controller.buttonText.tr,
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
