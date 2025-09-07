import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/functions/inputs_func.dart';
import 'package:makhekh/features/auth/login/ui/widgets/custom_text_form_field.dart';
import 'package:makhekh/features/auth/register/controller/signup_controller.dart';
import 'package:makhekh/const/colors/colors.dart';
import 'package:makhekh/features/auth/register/ui/widgets/password_validation.dart';

class SignupInputs extends GetView<SignupController> {
  const SignupInputs({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            // spacing: 5.h,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //name text field
              Text(
                'Name'.tr,
                style: TextStyle(
                  color: AppColors.placeholderColor,
                  fontSize: 18,
                ),
              ),
              CustomTextFormField(
                isObscure: false,
                hint: 'Enter Your Name'.tr,
                controller: controller.nameController,
                prefixIcon: Icon(
                  Icons.person_2_outlined,
                  color: AppColors.greyColor,
                ),
                validator: (text) {
                  return validInput(text!, 5, 20, "name", "Name".tr);
                },
              ),
              //email text field
              Text(
                'Email'.tr,
                style: TextStyle(
                  color: AppColors.placeholderColor,
                  fontSize: 18,
                ),
              ),
              CustomTextFormField(
                hint: 'Please Enter Your Email'.tr,
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
                style: TextStyle(
                  color: AppColors.placeholderColor,
                  fontSize: 18,
                ),
              ),
              CustomTextFormField(
                hint: 'Please Enter Your Password'.tr,
                controller: controller.passwordController,
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: AppColors.primaryColor,
                ),
                isPassword: true,
                filled: true,
                filledColor: AppColors.backgroundShadeColor,
                validator: (text) {
                  return validInput(text!, 8, 50, "password", "Password".tr);
                },

                onChanged: (text) {
                  controller.validatePassword(text);
                },
              ),

              // password Validation indicators
              PasswordValidation(
                password: controller.passwordController.text,
                controller: controller,
              ),

              // confirm password
              Text(
                'Confirm Password'.tr,
                style: TextStyle(
                  color: AppColors.placeholderColor,
                  fontSize: 18,
                ),
              ),
              CustomTextFormField(
                hint: 'Enter Your Confirm Password'.tr,
                controller: controller.confirmPasswordController,
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: AppColors.placeholderColor,
                ),
                isObscure: true,
                isPassword: true,
                validator: (text) {
                  return validInput(
                    text!,
                    8,
                    50,
                    "password",
                    "Confirm Password".tr,
                  );
                },

              ),

              Text(
                'Role'.tr,
                style: TextStyle(
                  color: AppColors.placeholderColor,
                  fontSize: 18,
                ),
              ),

              Obx(
                () => DropdownButtonFormField(
                  icon: Icon(Icons.arrow_drop_down, color: AppColors.greyColor),
                  dropdownColor: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(10.r),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.outlineTextFormColor,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10.h,
                      horizontal: 10.w,
                    ),
                  ),
                  value: controller.selectedRole.value,
                  items: [
                    DropdownMenuItem(value: "2", child: Text("Teacher".tr)),
                    DropdownMenuItem(value: "1", child: Text("Student".tr)),
                  ],
                  onChanged: (value) {
                    controller.changeRole(value!);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
