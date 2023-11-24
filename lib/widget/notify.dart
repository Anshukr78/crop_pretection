import 'package:crop_pretection/helper/color.dart';
import 'package:crop_pretection/helper/text_style.dart';
import 'package:flutter/material.dart';




notify({required BuildContext context,required String text}){
  return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text,
          style: AppStyle.tUrbanistStyle(
              size: 12,
              spacing: 1,
              color: AppColor.c198754(opacity: 1),
              fontWeight: FontWeight.w400,
          ),
        ),
        backgroundColor: AppColor.cFFFFFF(opacity: 1),
        elevation: 20,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(milliseconds: 1000),
      )
  );
}