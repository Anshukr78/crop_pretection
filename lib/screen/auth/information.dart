import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../component/button_widget.dart';
import '../../component/logo.dart';
import '../../component/textformfield.dart';
import '../../helper/color.dart';
import '../../helper/text_style.dart';
import '../../widget/notify.dart';
import '../bottom/bottom.dart';

class InformationScreen extends StatefulWidget {
  final String mobileNumber;

  const InformationScreen({super.key, required this.mobileNumber});

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  TextEditingController name = TextEditingController();
  bool loader = false;

  saveData() async {
    setState(() {
      loader = true;
    });
    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .set({
        'uid': FirebaseAuth.instance.currentUser!.uid,
        'name': name.text.trim(),
        'mobile': widget.mobileNumber,
        'createdAt': DateTime.now(),
        'imageUrl': '',
        'emailId': '',
        'isActive': true
      });

      notify(context: context, text: 'Date Saved');

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => BottomBarScreen()));

      setState(() {
        loader = false;
      });
    } catch (error) {
      notify(context: context, text: error.toString());
      setState(() {
        loader = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loader ? Center(child: CircularProgressIndicator(color: AppColor.c198754(opacity: 1),)) :
      SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 100,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Logo(),
                  Text(
                    'Krishi Mantra',
                    style: AppStyle.tUrbanistStyle(
                      size: 18,
                      spacing: 10,
                      color: AppColor.c0FAF3C(opacity: 1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              AppTextFieldWidget(
                hintText: 'Enter your name',
                controller: name,
              ),
              SizedBox(height: 20,),
              ButtonWidget(
                text: 'Save',
                onTab: () {
                  saveData();
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
