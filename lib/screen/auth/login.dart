import 'package:crop_pretection/component/logo.dart';
import 'package:crop_pretection/helper/color.dart';
import 'package:crop_pretection/helper/text_style.dart';
import 'package:crop_pretection/screen/auth/verfication_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../component/button_widget.dart';
import '../../component/textformfield.dart';
import '../../widget/notify.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController mobileController = TextEditingController();

  bool loader = false;

  sendOTP() async {
    setState(() {
      loader = true;
    });

    print('ANshu');
    try {
      await FirebaseAuth.instance.verifyPhoneNumber(
          phoneNumber: '+91${mobileController.text.trim()}',
          verificationCompleted: (PhoneAuthCredential phoneAuthCredential) {},
          verificationFailed: (FirebaseAuthException exception) {},
          codeSent: (String verification, int? resendToken) {
            setState(() {
              loader = false;
            });
            print('ANsh12345u');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => VerificationPage(
                  controller: mobileController,
                  verify: verification,
                ),
              ),
            );
          },
          codeAutoRetrievalTimeout: (String verificationId) {});
    } catch (error) {
      print(error);
      setState(() {
        loader = false;
      });
      notify(context: context, text: error.toString());
    }
  }

  verifyInput() {
    if (mobileController.text.trim().isEmpty) {
      notify(context: context, text: 'Please enter value');
    } else {
      setState(() {
        loader = true;
      });
      sendOTP();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loader
          ? Center(
            child: CircularProgressIndicator(
                backgroundColor: AppColor.c198754(opacity: 1),
              ),
          )
          : SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Column(
                      children: [
                        const Logo(),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Login Page',
                          style: AppStyle.tUrbanistStyle(
                            size: 20,
                            spacing: 2,
                            color: AppColor.c198754(opacity: 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    AppTextFieldWidget(
                      hintText: 'Enter mobile number',
                      controller: mobileController,
                    ),
                    ButtonWidget(
                      text: 'GET OTP',
                      onTab: () {
                        verifyInput();
                      },
                    ),
                    const SizedBox(
                      height: 200,
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
