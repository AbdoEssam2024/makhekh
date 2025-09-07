import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/colors/colors.dart';
import 'package:makhekh/const/functions/inputs_func.dart';
import 'package:makhekh/const/functions/pop_func.dart';
import 'package:makhekh/const/images/images.dart';
import 'package:makhekh/const/route/routes_names.dart';
import 'package:makhekh/features/auth/forget_password/controller/forget_pw_controller.dart';
import 'package:makhekh/features/core_widets/pop_scope.dart';
import 'package:makhekh/features/core_widets/custom_text.dart';
import 'package:makhekh/features/core_widets/custom_text_form_field.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgetPwController());
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
                  ))),

          body: SingleChildScrollView(
            child: Column(
              spacing: 15.h,
              children: [
                SizedBox(
                    height: 150.h,
                    child: Image.asset(AppImages.verify)),
                CustomText(
                  text: "Forget Password".tr,
                  size: 28.sp,
                  weight: FontWeight.bold,
                  textColor: AppColors.primaryColor,
                ),
                CustomText(
                  text: "Enter your email address\nTo Get Reset Code".tr,
                  size: 14.sp,
                  weight: FontWeight.bold,
                  textColor: AppColors.greyColor,
                ),
                Form(
                  key: controller.formKey,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 20.w),
                    child: CustomTextFormField(
                          isObscure: false,
                          prefixIcon: Image.asset(
                              color: AppColors.primaryColor,
                              AppImages.resetEmail),
                          hint: "Enter Your Email".tr,
                          label: "Email".tr,
                          controller:  controller.emailController,
                          validator: (value) {
                            return validInput(
                                value!,
                                10,
                                100,
                                "email",
                                "Email".tr);
                          },
                        ),
                  ),
                ),

                MaterialButton(
                  color: AppColors.primaryColor,
                  textColor: AppColors.whiteColor,
                  padding: EdgeInsets.symmetric(
                    horizontal: 80.w,
                    vertical: 10.h,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r)),
                  onPressed: () {
                    controller.sendCode();
                  },
                  child: CustomText(
                    text: "Send Code".tr,
                    size: 16.sp,
                    weight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
