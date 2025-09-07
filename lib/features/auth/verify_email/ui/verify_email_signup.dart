import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/functions/pop_func.dart';
import 'package:makhekh/const/route/routes_names.dart';
import 'package:makhekh/features/auth/verify_email/controller/verify_signup_controller.dart';
import 'package:makhekh/features/auth/verify_email/ui/widgets/otp_widget.dart';
import 'package:makhekh/features/core_widets/pop_scope.dart';
import 'package:makhekh/const/colors/colors.dart';
import 'package:makhekh/features/core_widets/custom_text.dart';
import 'package:makhekh/const/images/images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerifyEmailSignUp extends GetView<VerifySignupController> {
  const VerifyEmailSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifySignupController());
    return PopScopeWidget(
        popAction: (didpop, p1) {
          popFunc(
              didpop: didpop,
              result: Get.offNamed(RoutesNames.signup));
        },
        childWidget: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Get.offNamed(RoutesNames.signup);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: AppColors.primaryColor,
                )),
          ),
          body: SingleChildScrollView(
            child: Column(
              spacing: 25.h,
              children: [
                Image.asset(AppImages.verify),
                CustomText(
                  text: "Check your email".tr,
                  size: 28,
                  weight: FontWeight.bold,
                  textColor: AppColors.primaryColor,
                ),
                CustomText(
                  text: "We have sent a verification code to your email".tr,
                  size: 16,
                  weight: FontWeight.bold,
                  textColor: AppColors.greyColor,
                ),
                OtpWidget(
                  onSubmitCode: (value) {
                    controller.checkVerifyCode(value);
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
