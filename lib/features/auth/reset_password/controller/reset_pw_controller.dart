import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/api/api_links.dart';
import 'package:makhekh/const/route/routes_names.dart';
import 'package:makhekh/const/web_services/dio_config.dart';
import 'package:makhekh/features/auth/reset_password/model/request_model.dart';
import 'package:makhekh/features/auth/reset_password/model/response_model.dart';

class ResetPwController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? code;
  String? email;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  DioClient dioClient = Get.find<DioClient>();

  initControllers() {
    email = Get.arguments['email'];
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  goToSuccessPage() async {
    if (code != null && code!.length > 5) {
      if (formKey.currentState!.validate()) {
        if (passwordController.text == confirmPasswordController.text) {
          try {
            var response = await dioClient.post(
              ApiLinks.resetPassword,
              data: ResetPasswordRequest(
                code: code,
                email: email,
                newPassword: passwordController.text,
              ),
            );

            ResetPasswordResponse resetPasswordResponse =
                ResetPasswordResponse.fromJson(response.data);
            if (resetPasswordResponse.success == true) {
              Get.snackbar("Success".tr, resetPasswordResponse.data!);
              Get.offNamed(RoutesNames.login);
            } else {
              Get.snackbar("Warning".tr, resetPasswordResponse.message!);
            }
          } catch (e) {
            Get.snackbar("Warning".tr, e.toString());
          }
        } else {
          Get.snackbar("Warning".tr, "Passwords do not match".tr);
        }
      }
    } else {
      Get.snackbar("Warning".tr, "Verification code is required".tr);
    }
  }

  @override
  void onInit() {
    initControllers();
    super.onInit();
  }
}
