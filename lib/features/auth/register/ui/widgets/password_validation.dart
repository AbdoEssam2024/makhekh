import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makhekh/features/auth/register/controller/signup_controller.dart';

class PasswordValidation extends StatelessWidget {
  final String password;
  final SignupController controller;
  const PasswordValidation({
    super.key,
    required this.password,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            spacing: 2.w,
            children: [
              Icon(
                controller.hasCapitalLetter.value ? Icons.check_circle : Icons.error,
                color:
                    controller.hasCapitalLetter.value
                        ? Colors.green
                        : Colors.red,
              ),
              Text("Capital letter".tr),
            ],
          ),

          Row(
            spacing: 2.w,
            children: [
              Icon(
                controller.hasSmallLetter.value ? Icons.check_circle : Icons.error,
                color:
                    controller.hasSmallLetter.value ? Colors.green : Colors.red,
              ),
              Text("Small letter".tr),
            ],
          ),

          Row(
            spacing: 2.w,
            children: [
              Icon(
                controller.hasNumber.value ? Icons.check_circle : Icons.error,
                color: controller.hasNumber.value ? Colors.green : Colors.red,
              ),
              Text("Number".tr),
            ],
          ),

          Row(
            spacing: 2.w,
            children: [
              Icon(
                controller.passwordLength.value ? Icons.check_circle : Icons.error,
                color: controller.passwordLength.value ? Colors.green : Colors.red,
              ),
              Text("Length".tr),
            ],
          ),
        ],
      ),
    );
  }
}
