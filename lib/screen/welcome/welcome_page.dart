import 'package:crop_pretection/component/logo.dart';
import 'package:crop_pretection/helper/color.dart';
import 'package:crop_pretection/helper/text_style.dart';
import 'package:crop_pretection/screen/auth/login.dart';
import 'package:flutter/material.dart';

import '../../component/button_chain.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.c198754(opacity: 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height: 100,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Logo(),
              Text(
                'Welcome to Krishi Mantra',
                style: AppStyle.tUrbanistStyle(
                  size: 25,
                  spacing: 5,
                  color: AppColor.cFFFFFF(opacity: 1),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Text(
              'There are all kinds of equipment to build your farm better harvest.Be part of the agriculture and gives your team the  power you need to do your best',
              style: AppStyle.tUrbanistStyle(
                size: 18,
                spacing: 2,
                color: AppColor.c61CE66(opacity: 1),
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          ButtonChain(
            text: 'Continue',
            onTab: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            },
          ),
          SizedBox(height: 50,),
        ],
      ),
    );
  }
}
