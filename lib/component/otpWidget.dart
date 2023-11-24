import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../helper/color.dart';
import '../helper/size.dart';


class OTPWidget extends StatelessWidget {
  final Function(String) onSubmitted;
  final TextEditingController controller;
  const OTPWidget({super.key, required this.onSubmitted, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingSize.width(context, 80),
      child: Pinput(
        controller: controller,
        length: 6,
        animationCurve: Curves.bounceInOut,
        defaultPinTheme: PinTheme(
          height: AppSize.widthDivide(context, 8),
          width: AppSize.heightDivide(context, 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  width: 1,
                  color: AppColor.c000000(opacity: 0.3)
              ),
              color: AppColor.cFFFFFF(opacity: 1)
          ),

        ),
        onSubmitted: onSubmitted,
      ),
    );
  }
}
