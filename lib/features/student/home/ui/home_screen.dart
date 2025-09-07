import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/colors/colors.dart';
import 'package:makhekh/const/functions/pop_func.dart';
import 'package:makhekh/const/images/images.dart';
import 'package:makhekh/features/core_widets/pop_scope.dart';
import 'package:makhekh/features/student/home/ui/sub_screens/cart_screen/ui/cart_screen.dart';
import 'package:makhekh/features/student/home/ui/sub_screens/explore_screen/explore_screen.dart';
import 'package:makhekh/features/student/home/ui/sub_screens/my_courses_screen/my_courses_screen.dart';
import 'package:makhekh/features/student/home/ui/sub_screens/my_account_screen/my_account_screen.dart';
import 'package:makhekh/features/student/home/ui/sub_screens/search_screen/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return PopScopeWidget(
        popAction: (didpop, p1) {
          popFunc(didpop: didpop, result: exit(0));
        },
        childWidget: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 4,
            toolbarHeight: 30.h,
          ),
          backgroundColor: AppColors.whiteColor,
          bottomNavigationBar: BottomAppBar(
            color: AppColors.whiteColor,
            elevation: 20,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              showUnselectedLabels: true,
              currentIndex: selectedIndex,
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              elevation: 0,
              backgroundColor: Colors.transparent,
              selectedItemColor: AppColors.primaryColor,
              unselectedItemColor: AppColors.greyColor,
              iconSize: 22,
              unselectedFontSize: 12,
              selectedFontSize: 12,
              items: [
                BottomNavigationBarItem(
                    icon: selectedIndex == 0
                        ? Image.asset(AppImages.exploreActive)
                        : Image.asset(AppImages.exploreIcon),
                    label: 'Explore'.tr),
                BottomNavigationBarItem(
                    icon: selectedIndex == 1
                        ? Image.asset(AppImages.searchActive)
                        : Image.asset(AppImages.searchIcon),
                    label: 'Search'.tr),
                BottomNavigationBarItem(
                    icon: selectedIndex == 2
                        ? Image.asset(AppImages.coursesActive)
                        : Image.asset(AppImages.coursesIcon),
                    label: 'Courses'.tr),
                BottomNavigationBarItem(
                    icon: selectedIndex == 3
                        ? Image.asset(AppImages.cartActive)
                        : Image.asset(AppImages.cartIcon),
                    label: 'Cart'.tr),
                BottomNavigationBarItem(
                    icon: selectedIndex == 4
                        ? Image.asset(AppImages.myAccountActive)
                        : Image.asset(AppImages.myAccountIcon),
                    label: 'My Account'.tr),
              ],
            ),
          ),
          body: tabs[selectedIndex],
        ));
  }

  List<Widget> tabs = [
    ExploreScreen(),
    SearchScreen(searchFocusNode: FocusNode()),
    MyCoursesScreen(),
    CartScreen(),
    MyAccountScreen(),
  ];
}
