import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:makhekh/const/colors/colors.dart';

class TopCoursesSection extends StatelessWidget {
  final String? imagePath;
  final String? title;
  final String? rating;
  final String? reviewCount;
  final String? price;

  const TopCoursesSection({super.key, this.title, this.imagePath, this.price, this.rating, this.reviewCount});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Get.toNamed(RoutesNames.courseDetailsScreen);
      },
      child: Container(
        width: 200.w, // Adjust card width as needed
        margin: EdgeInsets.symmetric(horizontal: 8.0.w),
        child: Card(
          color: AppColors.whiteColor,
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10.0.r)),
                child: Image.asset(imagePath!,
                  width: 200.w,
                  height: 200.h,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                // color: Colors.grey,
                // height: ScreenSize.screenheight*0.13,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 20.h,
                        child: Text(title!,
                          style: TextStyle(fontWeight: FontWeight.bold , overflow: TextOverflow.ellipsis),)),
                    Row(
                      children: [
                        Text(rating! ),
                        Icon(Icons.star, size: 16.0, color: AppColors.yellowColor),
                        Icon(Icons.star, size: 16.0, color: AppColors.yellowColor),
                        Icon(Icons.star, size: 16.0, color: AppColors.yellowColor),
                        Text(' ($reviewCount)'),
                      ],
                    ),
                    SizedBox(height: 2.h,),
                    Text(
                      price!, style: TextStyle(fontWeight: FontWeight.bold , overflow: TextOverflow.ellipsis),),

                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border),
                        color: AppColors.primaryColor),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}