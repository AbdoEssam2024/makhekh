import 'package:get/get.dart';

class DropdownController extends GetxController {
  var isDropdownVisible = false.obs;
  var selectedLecture = 'All lectures'.tr.obs;
  var lectureOptions = ['All lectures', "${'Lecture'.tr} 1", "${'Lecture'.tr} 2", "${'Lecture'.tr} 3"]
      .obs;

  void toggleDropdown() {
    isDropdownVisible.value = !isDropdownVisible.value;
  }

  void selectLecture(String lecture) {
    selectedLecture.value = lecture;
    isDropdownVisible.value = false; // Close the dropdown
  }
}