import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/colors/colors.dart';
import 'package:makhekh/const/images/images.dart';
import 'package:makhekh/features/student/home/ui/sub_screens/explore_screen/top_courses_section.dart';
import 'package:makhekh/main.dart';
import 'category_tabs.dart';


class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          sharedPreferences.getString("lang") == null ?
          Stack(alignment: Alignment(0, 0), children: [
            Image.asset(AppImages.cover2Arabic, width: double.infinity,
              fit: BoxFit.fill,),
            Image.asset(AppImages.coverArabic),
          ]) :

          Stack(alignment: Alignment(1, 0), children: [
            Image.asset(
              AppImages.exploreOne, width: double.infinity, fit: BoxFit.fill,),
            Image.asset(AppImages.exploreTwo),
          ]),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('All skills you need in one place.'.tr,
                    style: TextStyle(
                        fontSize: 20,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w500)),
                SizedBox(height: 10.h,),
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit'.tr,
                  style: TextStyle(
                      fontSize: 14,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Categories'.tr,
                      style: TextStyle(
                          fontSize: 16,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text('See all'.tr,
                            style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500))),
                  ],
                ),
                CategoryTabs(),
                SizedBox(height: 10.h,),
                Text('Top courses'.tr,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 10.h,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TopCoursesSection(
                        imagePath: AppImages.topCoursesOne,
                        title: 'How the internet works and Web Development Process'.tr,
                        price: 'EGP 3,000 ',
                        rating: '4.4',
                        reviewCount: '1200k',
                      ),
                      TopCoursesSection(
                        imagePath: AppImages.topCoursesTwo,
                        title: 'Pre Programming everything you need to know before you code'.tr,
                        price: 'EGP 3,000 ',
                        rating: '4.4',
                        reviewCount: '1200k',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}