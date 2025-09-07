import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:makhekh/const/colors/colors.dart';

class CategoryTabs extends StatelessWidget {
  const CategoryTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          buildCategoryButton('Development'.tr),
          buildCategoryButton('Finance & Accounting'.tr),
          buildCategoryButton('Design'.tr),
          buildCategoryButton('Business'.tr),
          buildCategoryButton('Marketing'.tr),
          buildCategoryButton('Offer Productivity'.tr),
          buildCategoryButton('IT & Software'.tr),
          buildCategoryButton('Health'.tr),
          // Add more categories as needed
        ],
      ),
    );
  }

  Widget buildCategoryButton(String categoryName) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4), // Add some spacing
      child: OutlinedButton(
        // Or ElevatedButton for filled buttons
        onPressed: () {
          // Handle tab selection
          // print('Selected category: $categoryName');
        },

        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          minimumSize: Size(1, 1),
          backgroundColor: AppColors.whiteColor,
          side: BorderSide(color: AppColors.primaryColor),
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(20.0), // Adjust radius as needed
          ),
        ),

        child: Text(
          categoryName,
          style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}