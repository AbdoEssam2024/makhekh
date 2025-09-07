import 'package:get/get.dart';

class InstructorKnowledgeTwoController extends GetxController {
  RxString groupValueTwo = "".obs;


  changeValue(RxString initVal, String val) {
    initVal.value = val;
  }
}
