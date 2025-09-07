import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/api/api_links.dart';
import 'package:makhekh/const/route/routes_names.dart';
import 'package:makhekh/const/web_services/api_exceptions.dart';
import 'package:makhekh/const/web_services/dio_config.dart';
import 'package:makhekh/features/auth/login/model/response_model.dart';
import 'package:makhekh/features/auth/login/model/reuest_model.dart';
import 'package:makhekh/main.dart';

class LoginController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  DioClient dioClient = Get.find<DioClient>();
  late TextEditingController emailController;
  late TextEditingController passwordController;
  bool isObscure = true;
  RxBool isChecked = false.obs;

  login() async {
    if (formKey.currentState!.validate()) {
      try {
        var response = await dioClient.post(
          ApiLinks.login,
          data: LoginRequestModel.toJson(
            LoginRequestModel(
              email: emailController.text,
              password: passwordController.text,
            ),
          ),
        );

        LoginResponse loginResponse = LoginResponse.fromJson(response.data);
        if (loginResponse.success == true) {
          sharedPreferences.setString("token", loginResponse.data!.token!);
          sharedPreferences.setInt("visit", 2);
          Get.snackbar("Success", "Login successfully");
          if (loginResponse.data!.userType == 1) {
            Get.offNamed(RoutesNames.homeScreen);
          } else {
            Get.offNamed(RoutesNames.instructorKnowledgeOne);
          }
          // Navigate to home screen
        } else {
          Get.snackbar("Error", loginResponse.message!);
        }
      } on ApiException catch (e) {
        Get.snackbar("Error", e.message);
      }
    }
  }

  checkBoxVal(bool val) {
    isChecked.value = val;
  }

  initControllers() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  disposeControllers() {
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  void onInit() {
    initControllers();
    super.onInit();
  }

  @override
  void onClose() {
    disposeControllers();
    super.onClose();
  }
}
