import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/colors/colors.dart';
import 'package:makhekh/const/images/images.dart';
import 'package:makhekh/const/route/routes_names.dart';
import 'package:makhekh/features/auth/login/ui/widgets/login_inputs.dart';
import 'package:makhekh/features/auth/login/ui/widgets/remember_forget.dart';
import 'package:makhekh/features/auth/login/controller/login_controller.dart';
import 'package:makhekh/const/functions/pop_func.dart';
import 'package:makhekh/features/core_widets/pop_scope.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return PopScopeWidget(
      popAction: (didpop, p1) {
        popFunc(didpop: didpop, result: Get.offNamed(RoutesNames.signup));
      },
      childWidget: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          toolbarHeight: 50.h,
          backgroundColor: Colors.transparent,
          title: Text(
            'Login'.tr,
            style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 200.h,
                  child: Image.asset(AppImages.loginBanner)),

                LoginInputs(),

                RememberForget(
                  forgetFunc: () {
                    Get.offNamed(RoutesNames.forgetPassword);
                  },
                ),
                SizedBox(height: 20.h),

                //sign in button
                ElevatedButton(
                  onPressed: () {
                    controller.login();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(15),
                  ),
                  child: Text(
                    'Login'.tr,
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
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
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                      ),
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

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account".tr,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.blackColor,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // navigate to register screen
                        Get.offNamed(RoutesNames.signup);
                      },
                      child: Text(
                        'Sign Up'.tr,
                        style: TextStyle(
                          fontSize: 17,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
