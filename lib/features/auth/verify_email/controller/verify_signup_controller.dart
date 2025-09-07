import 'package:get/get.dart';
import 'package:makhekh/const/api/api_links.dart';
import 'package:makhekh/const/route/routes_names.dart';
import 'package:makhekh/const/web_services/dio_config.dart';
import 'package:makhekh/features/auth/verify_email/model/request_model.dart';
import 'package:makhekh/features/auth/verify_email/model/response_model.dart';

class VerifySignupController extends GetxController {
  late String email;
  DioClient dioClient = DioClient();

  getUserEmail() {
    email = Get.arguments['email'] ?? "";
  }

  checkVerifyCode(String code) async {
    try {
      var response = await dioClient.post(
        ApiLinks.verifyEmail,
        data: VerifyEmailRequestModel.toJson(
          VerifyEmailRequestModel(code: code, email: email),
        ),
      );

      VerifyEmailResponseModel verifyEmailResponseModel =
          VerifyEmailResponseModel.fromJson(response.data);
      if (verifyEmailResponseModel.success == true) {
        Get.snackbar("Success".tr, verifyEmailResponseModel.data!);
        Get.offNamed(RoutesNames.login);
      } else {
        Get.snackbar("Error".tr, verifyEmailResponseModel.message!);
      }
    } catch (e) {
      Get.snackbar("Error".tr, e.toString());
    }
  }

  @override
  void onInit() {
    getUserEmail();
    super.onInit();
  }
}
