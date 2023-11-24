import 'package:crop_pretection/helper/color.dart';
import 'package:flutter/material.dart';
import 'package:onboarding_animation/onboarding_animation.dart';

import '../../data/onboarding.dart';
import '../../widget/onboarding_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingAnimation(
        pages: [
          ...List.generate(
            onboardingListData.length,
            (index) => OnboardingWidget(
              title: onboardingListData[index]['title']!,
              description: onboardingListData[index]['description']!,
              buttonName:
                  index == onboardingListData.length - 1 ? 'DONE' : 'SKIP',
            ),
          )
        ],
        indicatorDotHeight: 7.0,
        indicatorDotWidth: 7.0,
        indicatorInActiveDotColor: AppColor.cFFFFFF(opacity: 1),
        indicatorActiveDotColor: AppColor.c198754(opacity: 1),
        indicatorType: IndicatorType.expandingDots,
        indicatorPosition: IndicatorPosition.bottomCenter,
      ),
    );
  }
}
