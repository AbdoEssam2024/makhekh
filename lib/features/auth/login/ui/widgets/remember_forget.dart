import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/colors/colors.dart';
import 'package:makhekh/features/auth/login/controller/login_controller.dart';

class RememberForget extends GetView<LoginController> {
  final void Function() forgetFunc;
  const RememberForget({super.key, required this.forgetFunc});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
            onPressed: forgetFunc,
            child: Text(
              'Forget Password'.tr,
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            )),
      ],
    );
  }
}