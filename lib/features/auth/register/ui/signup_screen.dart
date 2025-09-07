import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/functions/pop_func.dart';
import 'package:makhekh/features/auth/register/controller/signup_controller.dart';
import 'package:makhekh/const/route/routes_names.dart';
import 'package:makhekh/const/colors/colors.dart';
import 'package:makhekh/features/auth/register/ui/widgets/sign_in_widget.dart';
import 'package:makhekh/features/auth/register/ui/widgets/signup_btn.dart';
import 'package:makhekh/features/auth/register/ui/widgets/signup_inputs.dart';
import 'package:makhekh/features/core_widets/pop_scope.dart';

class RegisterScreen extends GetView<SignupController> {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignupController());
    return PopScopeWidget(
      popAction: (didpop, p1) {
        popFunc(didpop: didpop, result: Get.offNamed(RoutesNames.login));
      },
      childWidget: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            'Sign Up'.tr,
            style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            SignupInputs(),
            SignupBtn(func: () => controller.register()),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Divider(
                    color: AppColors.outlineTextFormColor,
                    thickness: 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'OR'.tr,
                    style: TextStyle(
                      color: AppColors.placeholderColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: AppColors.outlineTextFormColor,
                    thickness: 2,
                  ),
                ),
              ],
            ),
            // don't have account
            SignInWidget(func: () => Get.offNamed(RoutesNames.login)),
          ],
        ),
      ),
    );
  }
}
