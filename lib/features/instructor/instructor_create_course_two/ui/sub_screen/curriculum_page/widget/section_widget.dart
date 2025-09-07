import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:makhekh/const/colors/colors.dart';

class SectionWidget extends StatelessWidget {
  final String mainTitle;
  final String subTitle;
  final String hintText;
  final void Function() editFunc;
  final void Function() deleteFunc;
  final void Function() addFunc;
  final void Function() cancelFunc;
  final void Function() saveFunc;

  const SectionWidget({
    super.key,
    required this.mainTitle,
    required this.subTitle,
    required this.hintText,
    required this.editFunc,
    required this.deleteFunc,
    required this.addFunc,
    required this.cancelFunc,
    required this.saveFunc,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  mainTitle,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryColor,
                  ),
                ),
                IconButton(
                  onPressed: editFunc,
                  icon: Icon(
                    Icons.edit_outlined,
                    size: 20,
                    color: AppColors.blackColor,
                  ),
                ),
                IconButton(
                  onPressed: deleteFunc,
                  icon: Icon(
                    Icons.delete_forever_outlined,
                    color: AppColors.blackColor,
                    size: 20,
                  ),
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_drop_down)),
          ],
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: Container(
              margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 1.h),
              child: TextButton.icon(
                style: ButtonStyle(
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: AppColors.primaryColor, width: 2),
                    ),
                  ),
                ),
                icon: Icon(Icons.add, size: 20, color: AppColors.primaryColor),
                onPressed: addFunc,
                label: Text(
                  subTitle,
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            border: OutlineInputBorder(),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 1.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(top: 5.h, left: 5.w),
                width: 50.w,
                child: MaterialButton(
                  padding: EdgeInsets.symmetric(
                    vertical: 12.h,
                    horizontal: 2.w,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: AppColors.primaryColor, width: 2),
                  ),
                  textColor: AppColors.primaryColor,
                  onPressed: cancelFunc,
                  child: Text(
                    "Cancel".tr,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5.h, left: 5.w),
                width: 50.w,
                child: MaterialButton(
                  padding: EdgeInsets.symmetric(
                    vertical: 12.h,
                    horizontal: 2.w,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: AppColors.primaryColor,
                  textColor: AppColors.whiteColor,
                  onPressed: saveFunc,
                  child: Text(
                    "Save".tr,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
