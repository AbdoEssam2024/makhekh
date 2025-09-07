import 'package:flutter/material.dart';
import 'package:makhekh/const/colors/colors.dart';

class AuthBtn extends StatelessWidget {
  final void Function() func;
  final String image;
  final String text;
  const AuthBtn(
      {super.key, required this.func, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: func,
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.whiteColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: AppColors.outlineTextFormColor)),
          padding: EdgeInsets.all(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            image,
          ),
          Text(text,
              style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}