import 'package:get/get.dart';

class InstructorKnowledgeThreeController extends GetxController {

  RxString groupValueThree = "".obs;

  changeValue(RxString initVal, String val) {
    initVal.value = val;
  }
}
