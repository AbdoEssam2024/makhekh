import 'package:flutter/material.dart';

class MenuText extends StatelessWidget {
  final void Function() func;
  final String text;
  final double? textSize;
  final Color textColor;
  final FontWeight? textWeight;
  const MenuText(
      {super.key,
      required this.func,
      required this.text,
      this.textSize = 14,
      this.textColor = Colors.black,
      this.textWeight = FontWeight.w400});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: func,
      child: Text(
        text,
        style: TextStyle(
            color: textColor, fontSize: textSize, fontWeight: textWeight),
      ),
    );
  }
}
