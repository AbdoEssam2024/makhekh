import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:makhekh/const/colors/colors.dart';
import 'package:makhekh/const/images/images.dart';



class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h,),
            Center(child: Text('My Account'.tr, style: TextStyle(
                color: AppColors.blackShadeColor,
                fontSize: 24,
                fontWeight: FontWeight.w500))),
            SizedBox(height: 20.h,),
            //image account
            Center(
              child: Stack(
                  alignment: Alignment(1, 1.5),
                  children: [
                    CircleAvatar(
                      radius: MediaQuery
                          .of(context)
                          .size
                          .width * 0.13,
                      child: ClipOval(
                        child: SizedBox(
                          width:  100.w,
                          height: 100.h,
                          child: Image.asset(
                              AppImages.accountImage, fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    IconButton(onPressed: () {},
                        icon: Icon(Icons.camera_alt_rounded, size: 30,
                          color: AppColors.blackShadeColor,)),
                  ]
              ),
            ),
            SizedBox(height: 20.h,),
            Center(child: Text('Ahmed Abbas', style: TextStyle(
                color: AppColors.blackShadeColor,
                fontSize: 18,
                fontWeight: FontWeight.w400))),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text('Switch to instructor view'.tr,
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500))),
                Icon(
                  LineAwesomeIcons.angle_down_solid,
                  color: AppColors.primaryColor,
                  size: 14,
                ),
              ],
            ),

            Divider(
              color: AppColors.outlineTextFormColor,
            ),
            //1st divider
            TextButton(
                onPressed: () {},
                child: Text(
                  'My Courses'.tr,
                  style: TextStyle(
                      color: AppColors.blackShadeColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  'My Cart'.tr,
                  style: TextStyle(
                      color: AppColors.blackShadeColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Wishlist'.tr,
                  style: TextStyle(
                      color: AppColors.blackShadeColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                )),
            Divider(
              color: AppColors.outlineTextFormColor,
            ),
            //2nd divider
            SizedBox(height: 20.h,),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Notifications'.tr
                  ,
                  style: TextStyle(
                      color: AppColors.blackShadeColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Messages'.tr,
                  style: TextStyle(
                      color: AppColors.blackShadeColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                )),
            Divider(
              color: AppColors.outlineTextFormColor,
            ),
            //3rd divider
            SizedBox(height: 20.h,),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Account Settings'.tr,
                  style: TextStyle(
                      color: AppColors.blackShadeColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Payment Methods'.tr,
                  style: TextStyle(
                      color: AppColors.blackShadeColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                )),
            Divider(
              color: AppColors.outlineTextFormColor,
            ),
            //4th divider
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Language'.tr
                      ,
                      style: TextStyle(
                          color: AppColors.blackShadeColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    )),
                Icon(Icons.language_outlined),
              ],
            ),
          ],
        ),
      ),
    );
  }
}