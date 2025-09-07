import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/api/api_links.dart';
import 'package:makhekh/const/route/routes_names.dart';
import 'package:makhekh/const/web_services/dio_config.dart';
import 'package:makhekh/features/auth/forget_password/model/response_model.dart';

class ForgetPwController extends GetxController {
  late TextEditingController emailController;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  DioClient dioClient = Get.find<DioClient>();

  sendCode() async {
    if (formKey.currentState!.validate()) {
      try {
        var response = await dioClient.post(
          ApiLinks.forgetPassword,
          data: {"email": emailController.text},
        );

        ForgetPasswordResponse forgetPasswordResponse =
            ForgetPasswordResponse.fromJson(response.data);
        if (forgetPasswordResponse.success == true) {
          Get.snackbar("Success", forgetPasswordResponse.data!);
          Get.offNamed(RoutesNames.resetPassword , arguments: {
            "email": emailController.text
          });
        } else {
          Get.snackbar("Error", forgetPasswordResponse.message!);
        }
      } catch (e) {
        Get.snackbar("Error", e.toString());
      }
    }
  }

  initControllers() {
    emailController = TextEditingController();
  }

  @override
  void onInit() {
    initControllers();
    super.onInit();
  }
}
