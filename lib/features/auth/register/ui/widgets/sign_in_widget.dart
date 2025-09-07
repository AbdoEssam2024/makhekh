import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/colors/colors.dart';

class SignInWidget extends StatelessWidget {
  final void Function() func ;
  const SignInWidget({super.key, required this.func});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Already have an account?".tr,
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: AppColors.blackColor)),
        TextButton(
            onPressed: func,
            child: Text('Login'.tr,
                style: TextStyle(
                    fontSize: 17,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w600)))
      ],
    );
  }
}