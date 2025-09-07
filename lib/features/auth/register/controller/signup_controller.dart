import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/api/api_links.dart';
import 'package:makhekh/const/route/routes_names.dart';
import 'package:makhekh/const/web_services/api_exceptions.dart';
import 'package:makhekh/const/web_services/dio_config.dart';
import 'package:makhekh/features/auth/register/model/request_model.dart';
import 'package:makhekh/features/auth/register/model/response_model.dart';

class SignupController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  DioClient dioClient = Get.find<DioClient>();
  late TextEditingController emailController;
  late TextEditingController nameController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  RxString selectedRole = "1".obs;
  RxBool hasCapitalLetter = false.obs;
  RxBool hasSmallLetter = false.obs;
  RxBool hasNumber = false.obs;
  RxBool passwordLength = false.obs;

  register() async {
    var formData = formKey.currentState;
    if (formData!.validate()) {
      if (passwordController.text == confirmPasswordController.text) {
        try {
          var response = await dioClient.post(
            ApiLinks.register,
            data: RegisterRequestModel.toJson(
              RegisterRequestModel(
                fullName: nameController.text,
                email: emailController.text,
                password: passwordController.text,
                userType: int.parse(selectedRole.value),
              ),
            ),
          );

          RegisterResponse registerResponse = RegisterResponse.fromJson(
            response.data,
          );
          if (registerResponse.success == true) {
            Get.snackbar("Success".tr, registerResponse.data!);
            Get.offNamed(RoutesNames.verifyEmailSignUp, arguments: {
              'email': emailController.text,
            });
          } else {
            Get.snackbar("Error".tr, registerResponse.message!);
          }
        } on ApiException catch (e) {
          Get.snackbar("Error".tr, e.message);
        }
      }else {
        Get.snackbar("Error".tr, "Passwords Do Not Match".tr);
      }
    }
  }


  void validatePassword(String password) {
    if (RegExp(r"[A-Z]").hasMatch(password)) {
      hasCapitalLetter.value = true;
    }else{
      hasCapitalLetter.value = false;
    }
    if (RegExp(r"[a-z]").hasMatch(password)) {
      hasSmallLetter.value = true;
    }else{
      hasSmallLetter.value = false;
    }
    if (RegExp(r"[0-9]").hasMatch(password)) {
      hasNumber.value = true;
    }else{
      hasNumber.value = false;
    }
    if (password.length >= 8) {
      passwordLength.value = true;
    }else{
      passwordLength.value = false;
    }
  }

  void changeRole(String role) {
    selectedRole.value = role;
  }

  initControllers() {
    emailController = TextEditingController();
    nameController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  disposeControllers() {
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
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
