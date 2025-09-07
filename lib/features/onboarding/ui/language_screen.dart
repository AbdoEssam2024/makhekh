import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/colors/colors.dart';
import 'package:makhekh/const/images/images.dart';
import 'package:makhekh/features/onboarding/controller/onboarding_controller.dart';
import 'package:makhekh/features/onboarding/ui/widgets/dropdown_text.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingController onboardController = Get.put(
      OnboardingController(),
    );
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              left: 0,
              top: 0,
              child: Container(
                width: double.infinity,
                height: 300.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.r),
                    bottomRight: Radius.circular(50.r),
                  ),
                  image: DecorationImage(
                    image: AssetImage(AppImages.languageBanner),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Positioned(
              right: 0,
              left: 0,
              top: 360.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Obx(
                  () => DropdownButtonFormField(
                    icon: Icon(Icons.arrow_drop_down, color: Colors.white),
                    dropdownColor: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(10.r),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10.h,
                        horizontal: 10.w,
                      ),
                      filled: true,
                      fillColor: AppColors.primaryColor,
                    ),
                    value: onboardController.selectedLanguage.value,
                    items: [
                      DropdownMenuItem(
                        value: "en",
                        child: DropdownText(
                          image: AppImages.en,
                          text: "English".tr,
                        ),
                      ),
                      DropdownMenuItem(
                        value: "ar",
                        child: DropdownText(
                          image: AppImages.ar,
                          text: "Arabic".tr,
                        ),
                      ),
                    ],
                    onChanged: (value) {
                      onboardController.changeLanguage(value!);
                    },
                  ),
                ),
              ),
            ),

            Positioned(
              right: 0,
              left: 0,
              bottom: 150.h,
              child: Container(
                alignment: Alignment(0, 0.8),
                child: ElevatedButton(
                  onPressed: () {
                    //navigate to onboarding
                    onboardController.goToOnboardingPage();
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size.fromWidth(320.w),
                    backgroundColor: AppColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(10.h),
                  ),
                  child: GetBuilder<OnboardingController>(
                    builder:
                        (controller) => Text(
                          "Get Started".tr,
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                          ),
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
