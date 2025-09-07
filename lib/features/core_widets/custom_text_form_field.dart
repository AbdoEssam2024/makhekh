import 'package:flutter/material.dart';
import 'package:makhekh/const/colors/colors.dart';


// ignore: must_be_immutable
class CustomTextFormField extends StatefulWidget {
  String? label;
  String? hint;
  TextInputType keyboardType;
  TextEditingController controller;
  String? Function(String?) validator;
  bool isPassword;
  bool isObscure;
  bool filled;
  Color? filledColor;
  Widget? prefixIcon;
  Widget? suffixIcon;

  CustomTextFormField(
      {super.key,
      this.label,
      this.hint,
      this.keyboardType = TextInputType.text,
      required this.controller,
      required this.validator,
      this.isPassword = false,
      this.prefixIcon,
      this.isObscure = true,
      this.suffixIcon,
      this.filled = false,
      this.filledColor});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  // bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: TextFormField(
        
        decoration: InputDecoration(
          filled: widget.filled,
          fillColor: widget.filledColor,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      widget.isObscure = !widget.isObscure;
                    });
                  },
                  icon: Icon(widget.isObscure
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined),
                  color: AppColors.placeholderColor)
              : widget.suffixIcon,
          labelText: widget.label,
          hintText: widget.hint,
          hintStyle: TextStyle(color: AppColors.greyColor),
          labelStyle: TextStyle(
            color: Colors.black45,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:
                BorderSide(color: AppColors.outlineTextFormColor, width: 2.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:
                BorderSide(color: AppColors.outlineTextFormColor, width: 2.5),
          ),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  BorderSide(width: 3, color: AppColors.outlineTextFormColor)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  BorderSide(width: 3, color: AppColors.outlineTextFormColor)),
        ),
        keyboardType: widget.keyboardType,
        controller: widget.controller,
        validator: widget.validator,
        obscureText: widget.isObscure,
      ),
    );
  }
}