import 'package:crop_pretection/helper/color.dart';
import 'package:crop_pretection/helper/text_style.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

import '../helper/size.dart';

Widget profileContainerWidget(
    {required BuildContext context,
    required String text,
    required Widget child,
    required Color bgColor}) {
  return Container(
    margin: EdgeInsets.symmetric(
      vertical: AppSize.heightDivide(context, 70),
    ),
    width: AppSize.widthMultiply(context, 1),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: AppStyle.tUrbanistStyle(
            size: 12,
            spacing: 5,
            color: AppColor.c000000(opacity: 0.5),
            fontWeight: FontWeight.w500,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: AppSize.heightDivide(context, 60),
          ),
          width: AppSize.widthMultiply(context, 1),
          decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 5),
                  blurRadius: 15,
                  color: AppColor.c000000(opacity: 0.15),
                  inset: false,
                )
              ]),
          child: child,
        )
      ],
    ),
  );
}
