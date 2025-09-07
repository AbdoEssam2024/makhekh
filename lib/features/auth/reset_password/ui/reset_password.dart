import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/functions/pop_func.dart';
import 'package:makhekh/const/route/routes_names.dart';
import 'package:makhekh/features/auth/reset_password/controller/reset_pw_controller.dart';
import 'package:makhekh/features/auth/verify_email/ui/widgets/otp_widget.dart';
import 'package:makhekh/features/core_widets/pop_scope.dart';
import 'package:makhekh/features/core_widets/custom_text.dart';
import 'package:makhekh/features/core_widets/custom_text_form_field.dart';
import 'package:makhekh/const/images/images.dart';
import 'package:makhekh/const/colors/colors.dart';
import 'package:makhekh/const/functions/inputs_func.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ResetPwController());
    return PopScopeWidget(
      popAction: (didpop, p1) {
        popFunc(
          didpop: didpop,
          result: Get.offNamed(RoutesNames.forgetPassword),
        );
      },
      childWidget: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.offNamed(RoutesNames.forgetPassword);
            },
            icon: Icon(
              Icons.arrow_back,
              color: AppColors.primaryColor,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Form(
              key: controller.formKey,
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 10.h,
                  children: [
                    SizedBox(
                      height: 200.h,
                      child: Image.asset(AppImages.resetPassword),
                    ),
                    Column(
                      children: [
                        CustomText(
                          text: "Reset Password".tr,
                          size: 28.sp,
                          weight: FontWeight.bold,
                          textColor: AppColors.primaryColor,
                        ),
                        CustomText(
                          text: controller.email!,
                          size: 16.sp,
                          weight: FontWeight.bold,
                          textColor: AppColors.primaryColor,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                            text: "Enter the code".tr,
                            size: 16.sp,
                            weight: FontWeight.w400,
                            textColor: AppColors.greyColor,
                          ),
                        OtpWidget(onSubmitCode: (code) {
                          controller.code = code;
                        }),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                            text: "Password".tr,
                            size: 16.sp,
                            weight: FontWeight.w400,
                            textColor: AppColors.greyColor,
                          ),
                        CustomTextFormField(
                          hint: "Enter Your Password".tr,
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: AppColors.primaryColor,
                          ),
                          isObscure: true,
                          isPassword: true,
                          controller: controller.passwordController,
                          validator: (value) {
                            return validInput(
                              value!,
                              8,
                              30,
                              "password",
                              "Password".tr,
                            );
                          },
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                            text: "Confirm Password".tr,
                            size: 16.sp,
                            weight: FontWeight.w400,
                            textColor: AppColors.greyColor,
                          ),
                        
                        CustomTextFormField(
                          hint: "Enter Your Password Again".tr,
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: AppColors.primaryColor,
                          ),
                          isObscure: true,
                          isPassword: true,
                          controller: controller.confirmPasswordController,
                          validator: (value) {
                            return validInput(
                              value!,
                              8,
                              30,
                              "password",
                              "Password".tr,
                            );
                          },
                        ),
                      ],
                    ),
                    MaterialButton(
                      color: AppColors.primaryColor,
                      textColor: AppColors.whiteColor,
                      padding: EdgeInsets.symmetric(
                        horizontal: 80.w,
                        vertical: 10.h,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      onPressed: () {
                        controller.goToSuccessPage();
                      },
                      child: CustomText(
                        text: "Save Password".tr,
                        size: 16.sp,
                        weight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
