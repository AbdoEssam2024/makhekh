import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/colors/colors.dart';
import 'package:makhekh/const/functions/pop_func.dart';
import 'package:makhekh/const/images/images.dart';
import 'package:makhekh/const/route/routes_names.dart';
import 'package:makhekh/features/core_widets/custom_text.dart';
import 'package:makhekh/features/core_widets/pop_scope.dart';

class SuccessSignup extends StatelessWidget {
  const SuccessSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScopeWidget(
        popAction: (didpop, p1) {
          popFunc(
              didpop: didpop, result: Get.offNamed(RoutesNames.login));
        },
        childWidget: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Get.offNamed(RoutesNames.login);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: AppColors.primaryColor,
                )),
          ),
          body: SizedBox(
            width: double.infinity,
            child: Column(
              spacing: 25.h,
              children: [
                Image.asset(AppImages.success),
                Column(
                  spacing: 5.h,
                  children: [
                    CustomText(
                      text: "Success".tr,
                      size: 24,
                      weight: FontWeight.w500,
                      textColor: AppColors.primaryColor,
                    ),
                    CustomText(
                      text: "Your account has been Verified successfully".tr,
                      size: 12,
                      weight: FontWeight.w400,
                      textColor: AppColors.greyColor,
                    ),
                  ],
                ),
                MaterialButton(
                  color: AppColors.primaryColor,
                  textColor: AppColors.whiteColor,
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.w,
                    vertical: 10.h,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {
                    Get.offAllNamed(RoutesNames.login);
                  },
                  child: CustomText(
                    text: "Login".tr,
                    size: 16,
                    weight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
