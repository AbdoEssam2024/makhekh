import 'package:get/get.dart';

class InstructorKnowledgeOneController extends GetxController {
  RxString groupValueOne = "".obs;

  changeValue(RxString initVal, String val) {
    initVal.value = val;
  }
}
