import 'package:crop_pretection/helper/color.dart';
import 'package:flutter/material.dart';

class AppTextFieldWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const AppTextFieldWidget({super.key, required this.hintText, required this.controller});

  InputBorder inputBorder(double colorOpacity) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
          color: AppColor.c000000(opacity: colorOpacity),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          hintText: hintText,
          border: inputBorder(0.3),
          focusedBorder: inputBorder(0.3),
          enabledBorder: inputBorder(0.3),
        ),
      ),
    );
  }
}
