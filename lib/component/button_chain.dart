import 'package:crop_pretection/helper/color.dart';
import 'package:flutter/material.dart';

import '../helper/size.dart';
import '../helper/text_style.dart';



class ButtonChain extends StatelessWidget {
  final String text;
  final Function onTab;
  const ButtonChain({super.key, required this.text, required this.onTab});

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
          color: AppColor.cFFFFFF(opacity: 1)
        ),
        child: Center(
          child: Text(
            text,
            style: AppStyle.tUrbanistStyle(
                color: AppColor.c198754(opacity: 1),
                size: 18,
                spacing: 0.2,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
