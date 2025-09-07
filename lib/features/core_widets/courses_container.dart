import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:makhekh/const/colors/colors.dart';
import 'package:makhekh/features/student/home/ui/sub_screens/cart_screen/controller/counter_controller.dart';

class CoursesContainer extends StatelessWidget {
  final String title;
  final String courseImage;
  final String? courseStatus; //online or offline
  final String? courseType;
  final int? coursePrice;
  final int? courseTotalPrice;
  final bool isCourseDone;
  final bool isMyCoursesTab;
  final CounterFunction controller;

  const CoursesContainer({
    super.key,
    required this.title,
    required this.courseImage,
    this.courseStatus,
    this.courseType,
    this.isCourseDone = true,
    this.isMyCoursesTab = true,
    this.coursePrice = 0,
    this.courseTotalPrice = 0,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 14.h,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.containerColor,
        border: Border.all(color: AppColors.outlineTextFormColor, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child:
          isMyCoursesTab
              ?
              //1st row for myCourses tap
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(courseImage),
                  // course data
                  SizedBox(
                    width: 0.43.w,
                    // color: Colors.grey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            color: AppColors.blackShadeColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          courseStatus!,
                          style: TextStyle(
                            color: AppColors.greyColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          courseType!,
                          style: TextStyle(
                            color: AppColors.greyColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        isCourseDone
                            ? Container(
                              margin: EdgeInsets.symmetric(vertical: 3),
                              padding: EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 10,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.containerTextGreenColor
                                    .withAlpha(18),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                'Completed',
                                style: TextStyle(
                                  color: AppColors.containerTextGreenColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                              ),
                            )
                            : Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 10,
                              ),
                              margin: EdgeInsets.symmetric(vertical: 3),
                              decoration: BoxDecoration(
                                color: AppColors.containerTextYellowColor
                                    .withAlpha(18),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                'Inprogress',
                                style: TextStyle(
                                  color: AppColors.containerTextYellowColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                      ],
                    ),
                  ),
                  //angle down container
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.searchBarColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(LineAwesomeIcons.angle_down_solid),
                    ),
                  ),
                ],
              )
              //2nd row for cart tap
              : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(courseImage),
                  // course data
                  SizedBox(
                    width: 0.4.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            color: AppColors.blackShadeColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "EGP $coursePrice",
                          style: TextStyle(
                            color: AppColors.greyColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //(+ &-) buttons
                  GetBuilder<CounterFunction>(
                    init: CounterFunction(),
                    builder: (controller) {
                      return Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              controller.decrement();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(
                                LineAwesomeIcons.minus_solid,
                                color: AppColors.greyColor,
                              ),
                            ),
                          ),
                          SizedBox(width: 2.w),
                          Text('${controller.counter}'),
                          SizedBox(width: 2.w),
                          InkWell(
                            onTap: () {
                              controller.increment();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(
                                Icons.add,
                                color: AppColors.greyColor,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
    );
  }
}
