import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import '../../landing_page_screen.dart';

class PricingWidget extends StatelessWidget {
  const PricingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 6.h,
      children: [
        ListTile(
          title: Text(
            "Set a price for your course".tr,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            "is simply dummy text of the printing and typesetting industry.".tr,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 10.w,
          children: [
            Expanded(
              // width: 35.w,
              child: CustomDropDownWithLabel(
                  label: "Currency".tr,
                  dropDownItems: [
                    DropdownMenuEntry(value: "USD".tr, label: "USD".tr)
                  ],
                  initSelection: "USD".tr),
            ),
            Expanded(
              // width: 35.w,
              child: CustomDropDownWithLabel(
                  label: "Price Tier".tr,
                  dropDownItems: [
                    DropdownMenuEntry(value: "Free".tr, label: "Free".tr)
                  ],
                  initSelection: "Free".tr),
            ),
          ],
        ),
      ],
    );
  }
}
