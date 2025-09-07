import 'package:get/get.dart';
import 'package:flutter/material.dart';

class RegistrationController extends GetxController {
  var formKey = GlobalKey<FormState>();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  final selectedGender = Rx<String?>(null);
  final selectedAttendancePreference = Rx<String?>(null);
  TextEditingController facultyController = TextEditingController();
  TextEditingController graduationYearController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  var activeStep = 0.obs;
  RxString btnText = "Continue".tr.obs;

  void goToStep(int step) {
    activeStep.value = step;
    changeBtnText();
  }

  nextStep() {
    if (activeStep.value < 3) {
      activeStep.value++;
    }
    changeBtnText();
  }


  void updateGender(String? newValue) {
    selectedGender.value = newValue;
  }

  changeBtnText() {
    if (activeStep.value == 0) {
      btnText.value = "Continue".tr; // continue
    }
    else if (activeStep.value == 1) {
      btnText.value = "Reserve your seat".tr; //Reserve your seat
    }
    else if (activeStep.value == 2) {
      btnText.value = "Checkout".tr; // Checkout
    }
    else {
      btnText.value = "Confirm".tr; //Confirm
    }
  }

  void updateAttendancePreference(String? value) {
    selectedAttendancePreference.value = value;
  }

  void submitForm() {
    //     if (formKey.currentState!.validate()) {} ???
    Get.snackbar('Success'.tr, 'Registration submitted successfully'.tr);
  }
}


// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
//
// class PersonalDataController extends GetxController {
//   final fullNameController = TextEditingController();
//   final emailController = TextEditingController();
//   final phoneNumberController = TextEditingController();
//   final selectedGender = Rx<String?>(null);
//   final facultyController = TextEditingController();
//   final graduationYearController = TextEditingController();
//   final countryController = TextEditingController();
//   final selectedAttendancePreference = Rx<String?>(null);
//   final formKey = GlobalKey<FormState>();
//   final formKeyPersonalData = GlobalKey<FormState>();
//   final activeStep = 0.obs;
//
//   // void goToStep(int step) {
//   //   activeStep.value = step;
//   //   // print('Navigating to step: $step');
//   //   // Implement your navigation logic here based on the step index
//   //   if (step == 0) {
//   //     // Already on Personal Data
//   //   } else if (step == 1) {
//   //     Get.to(() => BookYourSeatScreen()); // Replace with your screen
//   //   } else if (step == 2) {
//   //     Get.to(() => PaymentScreen()); // Replace with your screen
//   //   } else if (step == 3) {
//   //     Get.to(() => ConfirmationScreen()); // Replace with your screen
//   //   }
//   // }
//   void goToStep(int step) {
//     activeStep.value = step;
//   }
//
//   // Validation for Personal Data
//   bool validatePersonalData() {
//     return formKeyPersonalData.currentState?.validate() ?? false;
//   }
//
//   void updateGender(String? newValue) {
//     selectedGender.value = newValue;
//   }
//
//   void updateAttendancePreference(String? value) {
//     selectedAttendancePreference.value = value;
//   }
//
//   void submitForm() {
//     if (formKey.currentState!.validate()) {
//       // print('Full Name: ${fullNameController.text}');
//       // print('Email: ${emailController.text}');
//       // print('Phone Number: ${phoneNumberController.text}');
//       // print('Gender: ${selectedGender.value}');
//       // print('Faculty: ${facultyController.text}');
//       // print('Graduation Year: ${graduationYearController.text}');
//       // print('Country: ${countryController.text}');
//       // print('Attendance Preference: ${selectedAttendancePreference.value}');
//       // Navigate to the next screen using Get.to() or Get.toNamed()
//     }
//   }
// }