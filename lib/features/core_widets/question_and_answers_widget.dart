import 'package:flutter/material.dart';
import 'package:makhekh/const/colors/colors.dart';
import 'package:makhekh/const/images/images.dart';

class QuestionsAndAnswersWidget extends StatelessWidget {
  final String hintText;

  const QuestionsAndAnswersWidget({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          minLines: 3,
          maxLines: 10,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.greyColor),
            border: OutlineInputBorder(),
            suffixIcon: IconButton(
                onPressed: () {}, icon: Image.asset(AppImages.sendIcon)),
          ),
        )
      ],
    );
  }
}