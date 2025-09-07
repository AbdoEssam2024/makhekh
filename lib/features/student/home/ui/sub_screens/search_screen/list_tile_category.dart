import 'package:flutter/material.dart';
import 'package:makhekh/const/colors/colors.dart';

class ListTileCategory extends StatelessWidget {
  final String title;
  final GestureTapCallback onTapFunction;

 const ListTileCategory({super.key, required this.title, required this.onTapFunction});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTapFunction,
      title: Text(title,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.blackColor)),
      tileColor: AppColors.whiteColor,
      trailing:
      Icon(Icons.arrow_forward_ios, color: AppColors.greyColor, size: 16),
      minTileHeight: MediaQuery.of(context).size.height * 0.03,
    );
  }
}