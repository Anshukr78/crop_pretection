import 'package:crop_pretection/component/logo.dart';
import 'package:crop_pretection/helper/color.dart';
import 'package:crop_pretection/helper/text_style.dart';
import 'package:flutter/material.dart';

import '../screen/welcome/welcome_page.dart';

class OnboardingWidget extends StatelessWidget {
  final String title, description;
  final String buttonName;

  const OnboardingWidget(
      {super.key,
      required this.title,
      required this.description,
      required this.buttonName,
      });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 30,
          top: 40,
          child: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const WelcomePage(),
                ),
              );
            },
            child: Text(
              buttonName,
              style: AppStyle.tUrbanistStyle(
                size: 15,
                spacing: 1,
                color: AppColor.c198754(opacity: 1),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                const Logo(),
                Text(
                  'Krishi Mantra',
                  style: AppStyle.tUrbanistStyle(
                    size: 18,
                    spacing: 5,
                    color: AppColor.c0FAF3C(opacity: 1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Stack(
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 2
                        ..color = AppColor.c198754(opacity: 1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColor.c61CE66(opacity: 1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: AppStyle.tUrbanistStyle(
                  size: 18,
                  spacing: 1,
                  color: AppColor.c61CE66(opacity: 1),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
