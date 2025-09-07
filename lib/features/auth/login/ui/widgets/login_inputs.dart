import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/functions/inputs_func.dart';
import 'package:makhekh/features/auth/login/controller/login_controller.dart';
import 'package:makhekh/const/colors/colors.dart';
import 'package:makhekh/features/auth/login/ui/widgets/custom_text_form_field.dart';

class LoginInputs extends GetView<LoginController> {
  const LoginInputs({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        key: controller.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10.h,
          children: [
            Text(
              'Email'.tr,
              style:
                  TextStyle(color: AppColors.placeholderColor, fontSize: 18),
            ),
            CustomTextFormField(
              hint: 'Enter your email'.tr,
              controller: controller.emailController,
              isObscure: false,
              prefixIcon: Icon(
                Icons.email_outlined,
                color: AppColors.greyColor,
              ),
              validator: (text) {
                return validInput(text!, 10, 100, "email", "Email".tr);
              },
            ),
            //password text field
            Text(
              'Password'.tr,
              style: TextStyle(color: AppColors.placeholderColor, fontSize: 18),
            ),
            CustomTextFormField(
              hint: 'Enter your password'.tr,
              controller: controller.passwordController,
              prefixIcon: Icon(
                Icons.lock_outline,
                color: AppColors.primaryColor,
              ),
              isObscure: true,
              isPassword: true,
              filled: true,
              filledColor: AppColors.backgroundShadeColor,
              validator: (text) {
                return validInput(text!, 8, 50, "password", "Password".tr);
              },
            ),
          ],
        ));
  }
}