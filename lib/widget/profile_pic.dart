
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crop_pretection/helper/color.dart';
import 'package:crop_pretection/helper/text_style.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../helper/size.dart';
import 'edit_profile.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: AppSize.heightDivide(context, 40)),
      padding:
      EdgeInsets.symmetric(horizontal: AppSize.widthDivide(context, 20)),
      height: AppSize.heightDivide(context, 4.5977),
      width: AppSize.widthMultiply(context, 1),

      child : FutureBuilder<DocumentSnapshot>(
        future: FirebaseFirestore.instance.collection('users')
            .doc(FirebaseAuth.instance.currentUser!.uid).get(),
        builder: (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot){

          if (snapshot.hasError) {
            return const Center(child: Text("Something went wrong"),);
          }

          if (snapshot.hasData && !snapshot.data!.exists) {
            return const Center(child: Text("Document does not exist"),);
          }

          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> data =
            snapshot.data!.data() as Map<String, dynamic>;
            print(data);
            return Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: AppSize.heightDivide(context, 8.8888),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        EditProfileWidget(imageUrl: data['imageUrl'].isEmpty ? '': data['imageUrl'],),
                        // SizedMedia.widthDivide(context, 20),
                        VerticalDivider(
                          width: 1,
                          color: AppColor.c0FAF3C(opacity: 1),
                        ),
                      ],
                    ),
                  ),
                  SizedMedia.heightDivide(context, 30),
                  Text(
                    data['name'].toString().toUpperCase(),
                    style: AppStyle.tUrbanistStyle(size: 20, spacing: 2, color: AppColor.c000000(opacity:1.0), fontWeight: FontWeight.w600,),
                    textAlign: TextAlign.start,
                  ),
                ]);
          }

          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
