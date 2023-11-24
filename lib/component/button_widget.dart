import 'package:crop_pretection/helper/text_style.dart';
import 'package:flutter/material.dart';

import '../helper/color.dart';
import '../helper/size.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Function onTab;

  const ButtonWidget({super.key, required this.text, required this.onTab});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTab();
      },
      child: Container(
        height: AppSize.heightDivide(context, 14.81),
        width: AppSize.widthMultiply(context, 0.82),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            colors: [
              AppColor.c198754(opacity: 1),
              AppColor.c61CE66(opacity: 1),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: AppStyle.tUrbanistStyle(
                color: AppColor.cFFFFFF(opacity: 1),
                size: 18,
                spacing: 0.2,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
