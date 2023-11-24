import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crop_pretection/helper/color.dart';
import 'package:crop_pretection/helper/text_style.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../component/button_widget.dart';
import '../../component/logo.dart';
import '../../component/otpWidget.dart';
import '../../helper/size.dart';
import '../../widget/notify.dart';
import '../bottom/bottom.dart';
import 'information.dart';

class VerificationPage extends StatefulWidget {
  final TextEditingController controller;
  final String verify;

  const VerificationPage(
      {super.key, required this.controller, required this.verify});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  TextEditingController otpController = TextEditingController();
  var otpValue;
  var existingUser;

  bool loader = false;

  verifyFunction() async {
    setState(() {
      loader = true;
    });

    try {
      PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
        verificationId: widget.verify,
        smsCode: otpController.text.trim(),
      );

      var newUser =
          await FirebaseAuth.instance.signInWithCredential(phoneAuthCredential);

      if (newUser != null) {
        existingUser = await FirebaseFirestore.instance
            .collection('user')
            .where('uId', isEqualTo: FirebaseAuth.instance.currentUser!.uid)
            .get();

        if (existingUser.docs.length == 0) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => InformationScreen(mobileNumber: widget.controller.text.trim(),),
            ),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => BottomBarScreen(),
            ),
          );
        }

        notify(context: context, text: 'Login Successfull');
        setState(() {
          loader = false;
        });
      }
    } catch (error) {
      setState(() {
        loader = false;
      });
      notify(context: context, text: error.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loader
          ? Center(
            child: CircularProgressIndicator(
                backgroundColor: AppColor.c198754(
                  opacity: 1,
                ),
              ),
          )
          : SingleChildScrollView(
              child: Padding(
                padding: PaddingSize.heightWidth(context, 20, 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 100,),
                    Column(
                      children: [
                        const Logo(),
                        Text(
                          'Krishi Mantra',
                          style: AppStyle.tUrbanistStyle(
                            size: 18,
                            spacing: 10,
                            color: AppColor.cFFFFFF(opacity: 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: PaddingSize.height(
                        context,
                        20,
                      ),
                      child: Text(
                        'Kindly enter verification code sent to +91${widget.controller.text.trim()}',
                        style: AppStyle.tUrbanistStyle(
                          size: 14,
                          spacing: 1,
                          color: AppColor.c61CE66(opacity: 1),
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    // SizedMedia.heightDivide(context, 20),

                    OTPWidget(
                      onSubmitted: (value) {
                        setState(() {
                          otpValue = value;
                        });
                      },
                      controller: otpController,
                    ),
                    SizedMedia.heightDivide(context, 20),
                    ButtonWidget(
                      text: 'Continue',
                      onTab: () {
                        verifyFunction();
                      },
                    ),
                    SizedMedia.heightDivide(context, 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Didn't received code ?",
                            style: AppStyle.tUrbanistStyle(
                                size: 13,
                                spacing: 1,
                                color: AppColor.c61CE66(opacity: 1),
                                fontWeight: FontWeight.w400)),
                        SizedMedia.widthDivide(context, 60),
                        InkWell(
                          onTap: () {},
                          child: Text("Resend",
                              style: AppStyle.tUrbanistStyle(
                                  size: 14,
                                  spacing: 1,
                                  color: AppColor.c000000(opacity: 1),
                                  fontWeight: FontWeight.w600)),
                        ),
                      ],
                    ),
                    SizedBox(height: 100,),
                  ],
                ),
              ),
            ),
    );
  }
}
