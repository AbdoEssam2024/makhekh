import 'package:get/get.dart';
import 'package:makhekh/const/localilazion/language_controller.dart';
import 'package:makhekh/const/web_services/dio_config.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LangController());
    Get.put(DioClient());
  }
}