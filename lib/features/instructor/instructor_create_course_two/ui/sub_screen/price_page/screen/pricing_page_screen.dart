import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makhekh/features/instructor/instructor_create_course_two/controller/create_course_two_controller.dart';
import '../widgets/pricing_widget.dart';
import '../widgets/promotion_widget.dart';
import '../widgets/voucher_widget.dart';

class PricingPageScreen extends GetView<CreateCourseTwoController> {
  const PricingPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 5.w,
      ),
      decoration: BoxDecoration(border: Border.all()),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          children: [
            Row(
              children: [
                DropdownMenu(
                    onSelected: (value) {
                      controller.getDropDownValue(
                          controller.pricingValue, value!);
                      // controller.changePricingPageContent();
                    },
                    inputDecorationTheme:
                        InputDecorationTheme(border: InputBorder.none),
                    initialSelection: "Pricing".tr,
                    dropdownMenuEntries: [
                      DropdownMenuEntry(value: "Pricing".tr, label: "Pricing".tr),
                      DropdownMenuEntry(value: "promotion".tr, label: "promotion".tr),
                      DropdownMenuEntry(value: "Purchase Vouchers".tr, label: "Purchase Vouchers".tr),
                    ]),
              ],
            ),
            Obx(() => controller.pricingValue.value == "Pricing".tr
                ? PricingWidget()
                : controller.pricingValue.value == "promotion".tr
                    ? PromotionWidget()
                    : VoucherWidget())
          ],
        ),
      ),
    );
  }
}
