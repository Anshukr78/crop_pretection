import 'package:crop_pretection/helper/color.dart';
import 'package:crop_pretection/screen/bottom/home.dart';
import 'package:crop_pretection/screen/bottom/profile.dart';
import 'package:crop_pretection/screen/bottom/search.dart';
import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int selected = 0;

  final List<Widget> _body = [
    HomePage(),
    SearchPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body[selected],
      bottomNavigationBar: StylishBottomBar(
        option: BubbleBarOptions(
          barStyle: BubbleBarStyle.horizotnal,
          bubbleFillStyle: BubbleFillStyle.fill,
          opacity: 0.3,
        ),
        items: [
          BottomBarItem(
            icon: const Icon(Icons.home_filled),
            title: const Text('Home'),
            backgroundColor: AppColor.c198754(opacity: 1),
          ),
          BottomBarItem(
            icon: const Icon(Icons.search_rounded),
            title: const Text('Search'),
            backgroundColor: AppColor.c198754(opacity: 1),
          ),
          BottomBarItem(
            icon: const Icon(Icons.person),
            title: const Text('Profile'),
            backgroundColor: AppColor.c198754(opacity: 1),
          ),
        ],
        hasNotch: true,
        currentIndex: selected,
        onTap: (index) {
          setState(() {
            selected = index;
            // controller.jumpToPage(index);
          });
        },
      ),
    );
  }
}
