import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:makhekh/const/colors/colors.dart';

class CategorySearchTab extends StatelessWidget {
  const CategorySearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          buildCategoryButton('Web Development'.tr),
          buildCategoryButton('Javascript'.tr),
          buildCategoryButton('React JS'.tr),
          buildCategoryButton('Java'.tr),
          buildCategoryButton('Android Development'.tr),
          buildCategoryButton('CSS'.tr),
          buildCategoryButton('Python'.tr),
          buildCategoryButton('HTML'.tr),
          buildCategoryButton('Angular'.tr),
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