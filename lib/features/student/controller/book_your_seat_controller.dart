import 'package:get/get.dart';

class ScheduleSelection {
  DateTime? selectedDate;
  String? selectedTimeSlot;
  String? selectedMonth;

  ScheduleSelection({
    this.selectedDate,
    this.selectedTimeSlot,
    this.selectedMonth,
  });
}

class BookYourSeatController extends GetxController {
  final schedule = ScheduleSelection().obs;
  final months = [
    'Jan'.tr, 'Feb'.tr, 'Mar'.tr, 'Apr'.tr, 'May'.tr, 'Jun'.tr,
    'Jul'.tr, 'Aug'.tr, 'Sep'.tr, 'Oct'.tr, 'Nov'.tr, 'Dec'.tr
  ].obs;

  final timeSlots = [
    '10:00 - 12:00',
    '12:00 - 14:00',
    '14:00 - 16:00',
    '16:00 - 18:00',
    '18:00 - 20:00',
    '20:00 - 22:00',
  ].obs;

  // void selectDate(DateTime date) {
  //   schedule.update((val) {
  //     val?.selectedDate = date;
  //   });
  // }

  void selectTimeSlot(String time) {
    schedule.update((val) {
      val?.selectedTimeSlot = time;
    });
  }

  // void selectMonth(String month) {
  //   schedule.update((val) {
  //     val?.selectedMonth = month;
  //   });
  // }

  void clearSelection() {
    schedule.update((val) {
      val?.selectedDate = null;
      val?.selectedTimeSlot = null;
      val?.selectedMonth = null;
    });
  }

  void saveSelection() {
    if (schedule.value.selectedDate != null &&
        schedule.value.selectedTimeSlot != null) {
      Get.snackbar('Success'.tr, 'Reservation saved successfully!'.tr);
    } else {
      Get.snackbar('Error'.tr, 'Please select both date and time'.tr);
    }
  }

// List<List<String>> getCurrentMonthDays() {
//   final now = DateTime.now();
//   final firstDay = DateTime(now.year, now.month, 1);
//   final lastDay = DateTime(now.year, now.month + 1, 0);
//
//   List<List<String>> weeks = [];
//   List<String> currentWeek = List.filled(7, '');
//
//   int currentWeekDay = 0;
//
//   // Fill days from previous month
//   for (int i = 0; i < firstDay.weekday; i++) {
//     final prevMonthDay = firstDay.subtract(Duration(days: firstDay.weekday - i));
//     currentWeek[i] = prevMonthDay.day.toString();
//     currentWeekDay = i + 1;
//   }
//
//   // Fill current month days
//   for (int day = 1; day <= lastDay.day; day++) {
//     currentWeek[currentWeekDay] = day.toString();
//     currentWeekDay++;
//
//     if (currentWeekDay == 7 || day == lastDay.day) {
//       weeks.add(List.from(currentWeek));
//       currentWeek = List.filled(7, '');
//       currentWeekDay = 0;
//     }
//   }
//
//   // Fill days from next month
//   if (currentWeekDay > 0) {
//     for (int i = currentWeekDay; i < 7; i++) {
//       final nextMonthDay = lastDay.add(Duration(days: i - currentWeekDay + 1));
//       currentWeek[i] = nextMonthDay.day.toString();
//     }
//     weeks.add(currentWeek);
//   }
//
//   return weeks;
// }
}