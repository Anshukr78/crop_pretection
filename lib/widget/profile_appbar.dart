import 'package:crop_pretection/helper/text_style.dart';
import 'package:flutter/material.dart';

import '../helper/color.dart';

AppBar bottomNavBarAppBarWidget(
    {required BuildContext context,
    required Function leading,
    required String title,
    required bool check}) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    automaticallyImplyLeading: false,
    leading: check
        ? InkWell(
            onTap: () {
              leading();
            },
            child: Icon(
              Icons.arrow_back_ios_outlined,
              color: AppColor.c000000(opacity: 1),
            ),
          )
        : null,
    title: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Text(
        title,
        style: AppStyle.tUrbanistStyle(
          size: 18,
          spacing: 1,
          color: AppColor.c000000(opacity: 1),
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}
