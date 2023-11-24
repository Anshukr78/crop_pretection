import 'package:crop_pretection/helper/text_style.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:iconify_flutter/icons/ri.dart';

import '../../helper/color.dart';
import '../../helper/size.dart';
import '../../widget/delete.dart';
import '../../widget/profileTile.dart';
import '../../widget/profile_appbar.dart';
import '../../widget/profile_listTile.dart';
import '../../widget/profile_pic.dart';
import '../welcome/splash_screen.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool loader = false;


  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return DeleteConfirmationDialog(
          onConfirm: () {
            _deleteAccount();
          },
        );
      },
    );
  }

  void _deleteAccount() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      try {
        await user.delete();
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SplashScreen()));
      } catch (e) {
        // Handle any errors that occur during deletion
        print('Error deleting account: $e');
        // Show error alert or display an error message
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cFFFFFF(opacity: 1),
      appBar: bottomNavBarAppBarWidget(
          context: context, title: 'Profile', leading: () {}, check: false),
      body: loader
          ? const Center(
              child: CircularProgressIndicator(
                  //color: AppColor.c9ABAB6,
                  ),
            )
          : SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSize.widthDivide(context, 30),
                ),
                child: Column(
                  children: [
                    const ProfileWidget(),
                    profileContainerWidget(
                      context: context,
                      text: 'My Account',
                      bgColor: AppColor.cFFFFFF(opacity: 1),
                      child: Column(
                        children: [
                          ProfileListTileWidget(
                            icon: Ph.user,
                            next: true,
                            title: 'Personal Details',
                            call: () {

                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             const PersonalDetails()));

                            },
                          ),
                          ProfileListTileWidget(
                            icon: Ri.lock_password_line,
                            next: true,
                            title: 'Change Password',
                            call: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             const ChangePassword()));
                            },
                          ),
                          // ProfileListTileWidget(
                          //     icon: Charm.north_star,
                          //     next: true,
                          //     title: 'Certificate',
                          //     call: () {
                          //       Navigator.push(
                          //           context,
                          //           MaterialPageRoute(
                          //               builder: (context) => const Certificate()));
                          //     }),
                        ],
                      ),
                    ),
                    profileContainerWidget(
                      context: context,
                      text: '',
                      bgColor: AppColor.cFFFFFF(opacity: 1),
                      child: Column(
                        children: [
                          ProfileListTileWidget(
                              icon: Mdi.logout,
                              next: false,
                              title: 'Logout',
                              call: () {
                                setState(() {
                                  loader = true;
                                });
                                FirebaseAuth.instance.signOut();

                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SplashScreen()));
                                setState(() {
                                  loader = false;
                                });
                              }),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: AppSize.heightDivide(context, 40),
                          horizontal: AppSize.widthDivide(context, 6)),
                      child: Divider(
                        thickness: 1,
                        color: AppColor.c198754(opacity: 1),
                      ),
                    ),
                    Text(
                      'Warning Zone !',
                      style : AppStyle.tUrbanistStyle(size: 12, spacing: 1, color: AppColor.c000000(opacity: 0.70), fontWeight: FontWeight.w400)
                    ),
                    profileContainerWidget(
                      context: context,
                      text: '',
                      bgColor: AppColor.c0FAF3C(opacity: 1),
                      child: Column(
                        children: [
                          ProfileListTileWidget(
                              icon: Ri.delete_bin_6_line,
                              next: false,
                              title: 'Delete My Account',
                              call: () {
                                _showConfirmationDialog(context);
                              }),
                        ],
                      ),
                    ),
                    SizedMedia.heightDivide(context, 10)
                  ],
                ),
              ),
            ),
    );
  }
}
