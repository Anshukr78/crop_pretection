import 'dart:async';

import 'package:crop_pretection/component/logo.dart';
import 'package:crop_pretection/helper/color.dart';
import 'package:crop_pretection/helper/text_style.dart';
import 'package:crop_pretection/screen/auth/login.dart';
import 'package:crop_pretection/screen/bottom/bottom.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'onboarding.dart';

var screenRecord;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  setValue() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    screenRecord = sp.getInt('record');
    await sp.setInt('record', 1);
    startTimer();
  }

  startTimer() {
    Timer(const Duration(seconds: 2), () {
      if (screenRecord == 1) {
        User? user = FirebaseAuth.instance.currentUser;

        if (user == null) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginPage(),
            ),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const BottomBarScreen(),
            ),
          );
        }
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const OnboardingScreen(),
          ),
        );
      }
    });
  }

  @override
  void initState() {
    setValue();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Logo(),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Crop Animal',
              style: AppStyle.tUrbanistStyle(
                size: 28,
                spacing: 5,
                color: AppColor.c198754(opacity: 1),
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
